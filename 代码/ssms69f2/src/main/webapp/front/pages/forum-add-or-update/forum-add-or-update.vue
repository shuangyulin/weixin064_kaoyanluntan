<template>
	<view class="container my-publish-pv">
		<form>
			<view class="cu-form-group margin-top">
				<input :style='{"boxShadow":"0 0 16rpx rgba(0,0,0,.6) inset","backgroundColor":"rgba(255, 255, 255, 0)","borderColor":"rgba(0,0,0,.6)","borderRadius":"16rpx","color":"#333","textAlign":"left","borderWidth":"0","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' v-model="forum.title" placeholder="标题"></input>
			</view>
			<view class="cu-form-group margin-top">
				<!-- <radio-group>
					<label class="radio">
						<radio @tap="setIsDoneTap('开放')" style="margin: 0 20upx;" value="开放" :checked="forum.isdone=='开放'" /><text>开放</text>
						<radio @tap="setIsDoneTap('关闭')" style="margin: 0 20upx;" value="关闭" :checked="forum.isdone=='关闭'" /><text>私人</text>
					</label>
				</radio-group> -->
				<picker @change="setIsDoneTap" :value="index" :range="options">
					<view class="uni-picker-type" :style='{"lineHeight":"80rpx","fontSize":"28rpx","color":"#333","textAlign":"left"}'>{{options[index]}}</view>
				</picker>
			</view>
			<view class="cu-form-group margin-top">
				<textarea :style='{"boxShadow":"0 0 16rpx rgba(0,0,0,.6) inset","backgroundColor":"rgba(255, 255, 255, 0)","borderColor":"rgba(0,0,0,.6)","borderRadius":"16rpx","color":"#333","borderWidth":"0","fontSize":"28rpx","borderStyle":"solid","height":"300rpx"}' style="height: 500upx;" v-model="forum.content" placeholder="内容"></textarea>
			</view>
			<view class="cu-form-group margin-top" style="text-align:center">
				<button :style='{"boxShadow":"0 0 16rpx rgba(0,0,0,0) inset","backgroundColor":"rgba(23, 152, 242, 1)","borderColor":"rgba(23, 152, 242, 1)","borderRadius":"8rpx","color":"#fff","borderWidth":"1","width":"100%","fontSize":"28rpx","borderStyle":"solid","height":"80rpx"}' @tap="onSubmitTap" class="bg-red margin-tb-sm">确认提交</button>
			</view>
		</form>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				forum: {
					content: '',
					id: '',
					title: '',
					isdone: '开放',
					parentid: 0
				},
				index: 0,
				options: ['开放', '关闭'],
				username: '',
				user: {}
			}
		},
		async onLoad(options) {
			let table = uni.getStorageSync("nowTable");
			// 获取用户信息
			let res = await this.$api.session(table);
			this.user = res.data;
									                                    if(table == `yonghu`){
                this.username = this.user.zhanghao
            }
                                                                                                                                                                                                						            			            			            			            			            			            			            			            			            			            			            			            			if (options.id) {
				this.id = options.id;
				let res = await this.$api.info('forum',this.id);
				this.forum = res.data
			}
			this.styleChange()
		},
		methods: {
			styleChange() {
				this.$nextTick(()=>{
					// document.querySelectorAll('.my-publish-pv .uni-input-input').forEach(el=>{
					//   el.style.backgroundColor = this.myPublishForm.content.input.backgroundColor
					// })
				})
			},
			async onSubmitTap() {
				this.forum.username = this.username;
				if (this.id) {
					await this.$api.update('forum',this.forum);
				} else {
					await this.$api.save('forum',this.forum);
				}
				this.$utils.msgBack('操作成功');
			},
			setIsDoneTap(e) {
				// this.forum.isdone = e;
				this.index = e.target.value
				this.forum.isdone = this.options[this.index]
			},
		}
	}
</script>

<style>
	page {
		background-color: #fff;
	}
	
	.container {
		padding: 20upx 24upx;
	}
	
	.container:after {
		position: fixed;
		top: 0;
		right: 0;
		left: 0;
		bottom: 0;
		content: '';
				background-attachment: fixed;
		background-size: cover;
		background-position: center;
	}
	
	.cu-form-group {
		padding: 0;
		background-color: transparent;
		min-height: inherit;
	}
	
	.cu-form-group+.cu-form-group {
		border: 0;
	}
	
	.cu-form-group uni-input {
		padding: 0 30upx;
	}
	
	.cu-form-group uni-textarea {
		padding: 30upx;
		margin: 0;
	}
	
	.cu-form-group uni-picker::after {
		line-height: 80rpx;
	}
	
	.bg-red {
		line-height: 80rpx;
	}
</style>
