const base = {
    get() {
        return {
            url : "http://localhost:8080/ssms69f2/",
            name: "ssms69f2",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssms69f2/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "考研论坛设计小程序"
        } 
    }
}
export default base
