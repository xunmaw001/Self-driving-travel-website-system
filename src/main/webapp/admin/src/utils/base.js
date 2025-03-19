const base = {
    get() {
        return {
            url : "http://localhost:8080/ssm62087/",
            name: "ssm62087",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm62087/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "自驾游网站系统"
        } 
    }
}
export default base
