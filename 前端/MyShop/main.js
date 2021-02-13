import Vue from 'vue'
import App from './App'
import { myRequest } from './util/api.js'

Vue.prototype.$myRequest = myRequest

// 时间格式处理
Vue.filter('formatDate',(date)=>{
	const nDate = new Date(date)
	console.log(nDate)
	const year = nDate.getFullYear().toString().padStart(2,0)
	const month = nDate.getMonth().toString().padStart(2,0)
	const day = nDate.getDay().toString().padStart(2,0)
	return year +'-' + month +'-'+ day
})

Vue.config.productionTip = false

App.mpType = 'app'

const app = new Vue({
    ...App
})
app.$mount()
