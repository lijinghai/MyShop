<template>
	<view>
		<view class="news_detail">
			<view class="title">{{detail.title}}</view>
			<view class="info">
				<!-- <text>发表时间:{{detail.addTime | formatDate}}</text> -->
				<text>发表时间:{{detail.addTime}}</text>
				<text>浏览次数:{{detail.click}}</text>
			</view>
			<!-- 存放内容 -->
			<view class="content">
				<!-- 富文本 -->
				<rich-text :nodes="detail.content"></rich-text>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				id: 0,
				detail: {}
			}
		},
		methods: {
			async getNewsDetail (){
				const res = await this.$myRequest({
					url: '/new/%7Bid%7D?limit=1&page=1&sort=1&id='+this.id
				})
				console.log(res)
				this.detail = res.data.data.items[0]
			}
		},
		onLoad(options) {
			console.log(options)
			this.id = options.id
			this.getNewsDetail()
		}
	}
</script>

<style lang="scss">
.news_detail {
	font-size: 30rpx;
	padding: 0 20rpx;
	.title {
		text-align: center;
		width: 710rpx;
		display: block;
		margin:20rpx 0;
	}
	.info {
		display: flex;
		justify-content: space-between;
	}
}
</style>
