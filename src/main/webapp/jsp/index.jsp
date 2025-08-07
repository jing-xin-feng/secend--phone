<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>手机回收 - 专业二手手机回收估价平台 | 回购网</title>
    <meta name="keywords" content="手机回收,二手手机回收,旧手机回收,废旧手机回收,二手手机交易,二手手机价格,二手手机估价,手机回收价格"/>
    <meta name="description" content="回购网提供专业的二手手机回收服务，实时估价，免费上门回收，安全快捷，让您的旧手机变现金！"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="baidu-site-verification" content="IpuQLFxZiC"/>
    <meta name="chinaz-site-verification" content="081e7651-48c6-4c2f-a569-99321685eab1"/>
    <link href="${pageContext.request.contextPath}/favicon.ico" type=image/x-icon rel="Icon">
    <link href="${pageContext.request.contextPath}/static/css/global.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/css/new_global.css" rel="stylesheet" type="text/css">
    <script src="${pageContext.request.contextPath}/static/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/new_js/new_public.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/new_js/jquery.kinMaxShow-1.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/new_js/lrtk.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/new_js/menu.js" type="text/javascript"></script>
    <style>
        :root {
            --primary-color: #ff6b00;
            --secondary-color: #00a2ff;
            --light-bg: #f8f9fa;
            --dark-text: #333;
            --light-text: #666;
            --border-color: #eaeaea;
            --shadow: 0 2px 12px rgba(0,0,0,0.08);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "PingFang SC", "Microsoft YaHei", sans-serif;
        }

        body {
            background-color: #f5f7fa;
            color: var(--dark-text);
            line-height: 1.6;
        }

        a {
            text-decoration: none;
            color: inherit;
            transition: all 0.3s ease;
        }

        a:hover {
            color: var(--primary-color);
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 15px;
        }

        /* 顶部导航 */
        .shortcut {
            background-color: #333;
            color: #ddd;
            font-size: 12px;
            height: 32px;
            line-height: 32px;
        }

        .shortcut .container {
            display: flex;
            justify-content: space-between;
        }

        .shortcut-left, .shortcut-right {
            display: flex;
            gap: 20px;
        }

        .shortcut-left li, .shortcut-right li {
            list-style: none;
        }

        .shortcut-left a, .shortcut-right a {
            color: #ddd;
        }

        .shortcut-left a:hover, .shortcut-right a:hover {
            color: #fff;
        }

        .city a {
            color: var(--primary-color);
        }

        /* 头部区域 */
        .header {
            background-color: #fff;
            box-shadow: var(--shadow);
            padding: 15px 0;
        }

        .header .container {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .logo img {
            height: 50px;
        }

        .nav {
            display: flex;
            gap: 30px;
        }

        .nav a {
            font-size: 16px;
            font-weight: 600;
            padding: 8px 0;
            position: relative;
        }

        .nav a.on, .nav a:hover {
            color: var(--primary-color);
        }

        .nav a.on::after, .nav a:hover::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 3px;
            background-color: var(--primary-color);
        }

        .nav img {
            height: 16px;
            margin-left: 5px;
        }

        /* 搜索区域 */
        .new_search {
            background: linear-gradient(135deg, #1e5799 0%,#207cca 51%,#2989d8 100%);
            padding: 40px 0;
        }

        .search-box {
            max-width: 800px;
            margin: 0 auto;
            text-align: center;
        }

        .search-title {
            color: white;
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
            text-shadow: 0 1px 3px rgba(0,0,0,0.3);
        }

        .search {
            display: flex;
            position: relative;
        }

        .search-fenlei {
            background: white;
            border-radius: 4px 0 0 4px;
            cursor: pointer;
            width: 100px;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
        }

        .search-fenlei::after {
            content: '▼';
            font-size: 10px;
            margin-left: 5px;
        }

        .input-txt {
            flex: 1;
            height: 50px;
            border: none;
            padding: 0 20px;
            font-size: 16px;
            outline: none;
        }

        .input-btn {
            width: 120px;
            height: 50px;
            background: var(--primary-color);
            color: white;
            border: none;
            border-radius: 0 4px 4px 0;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s;
        }

        .input-btn:hover {
            background: #e05a00;
        }

        /* 主要内容 */
        .search_list {
            padding: 30px 0;
            background: var(--light-bg);
        }

        .current {
            margin-bottom: 20px;
            color: var(--light-text);
            font-size: 14px;
        }

        .current a {
            color: var(--light-text);
        }

        .current a:hover {
            color: var(--primary-color);
        }

        .side_left {
            width: 200px;
            float: left;
            background: white;
            border-radius: 8px;
            box-shadow: var(--shadow);
            overflow: hidden;
            margin-right: 20px;
        }

        .side_list, .side_hot {
            padding: 15px;
        }

        .side_list dt, .side_hot dt {
            font-size: 16px;
            font-weight: bold;
            padding-bottom: 10px;
            margin-bottom: 10px;
            border-bottom: 1px solid var(--border-color);
        }

        .side_list dd {
            padding: 8px 0;
            display: flex;
            align-items: center;
        }

        .side_list dd a {
            display: flex;
            align-items: center;
            width: 100%;
        }

        .side_list b {
            display: inline-block;
            width: 24px;
            height: 24px;
            margin-right: 8px;
            background: #f5f5f5;
            border-radius: 4px;
        }

        .side_hot .img2 {
            width: 42px;
            height: 42px;
            background: #f5f5f5;
            border-radius: 4px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 10px;
        }

        .side_hot .img2 img {
            max-width: 100%;
            max-height: 100%;
        }

        .side_hot .txt2 {
            flex: 1;
        }

        .hotline {
            background: var(--secondary-color);
            color: white;
            text-align: center;
            padding: 15px;
        }

        .hotline img {
            margin-right: 10px;
            vertical-align: middle;
        }

        .hotline span {
            font-size: 18px;
            font-weight: bold;
        }

        .side_right {
            overflow: hidden;
        }

        .brand, .search_main {
            background: white;
            border-radius: 8px;
            box-shadow: var(--shadow);
            padding: 20px;
            margin-bottom: 20px;
        }

        .title2 {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 15px;
            display: flex;
            align-items: center;
        }

        .title2 span {
            border-bottom: 2px solid var(--primary-color);
            padding-bottom: 5px;
        }

        .brand_main {
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
        }

        .brand_hot, .brand_hots {
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
            background: #f9f9f9;
            padding: 10px 15px;
            border-radius: 4px;
            width: 100%;
        }

        .brand_hot a, .brand_hots a {
            padding: 5px 15px;
            background: #f0f0f0;
            border-radius: 30px;
            transition: all 0.3s;
        }

        .brand_hot a:hover, .brand_hots a:hover {
            background: var(--primary-color);
            color: white;
        }

        .search_title {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .search_title h2 {
            font-size: 20px;
            color: var(--primary-color);
            margin-right: 15px;
        }

        .pic_list {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(180px, 1fr));
            gap: 20px;
        }

        .pic_list_box {
            border: 1px solid var(--border-color);
            border-radius: 8px;
            overflow: hidden;
            transition: all 0.3s;
            position: relative;
        }

        .pic_list_box:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
            border-color: var(--primary-color);
        }

        .pic_list_img {
            height: 160px;
            display: flex;
            align-items: center;
            justify-content: center;
            background: #f9f9f9;
        }

        .pic_list_img img {
            max-height: 140px;
            max-width: 90%;
        }

        .pic_list_box .name {
            padding: 10px;
            text-align: center;
            font-weight: 600;
        }

        .pinggu {
            text-align: center;
            padding: 10px;
            background: #f5f7fa;
        }

        .pinggu a {
            display: inline-block;
            padding: 6px 15px;
            background: var(--primary-color);
            color: white;
            border-radius: 4px;
            font-size: 14px;
        }

        .pinggu a:hover {
            background: #e05a00;
        }

        .hot {
            position: absolute;
            top: 10px;
            right: 10px;
        }

        .hot img {
            height: 30px;
        }

        .pageStr {
            margin-top: 30px;
            text-align: center;
        }

        .ihuigo_page {
            display: inline-flex;
            gap: 5px;
        }

        .ihuigo_page span {
            display: inline-block;
            width: 36px;
            height: 36px;
            line-height: 36px;
            text-align: center;
            border: 1px solid var(--border-color);
            border-radius: 4px;
        }

        .ihuigo_page span.cur_link {
            background: var(--primary-color);
            color: white;
            border-color: var(--primary-color);
        }

        .ihuigo_page a {
            display: block;
            width: 100%;
            height: 100%;
        }

        /* 页脚 */
        .footer {
            background: #333;
            color: #ccc;
            padding: 40px 0 20px;
        }

        .footer .container {
            display: flex;
            flex-wrap: wrap;
            gap: 40px;
        }

        .foot_list1, .foot_list2, .foot_list3, .foot_list4 {
            flex: 1;
            min-width: 200px;
        }

        .foot_list1 dt, .foot_list2 dt, .foot_list3 dt, .foot_list4 dt {
            font-size: 18px;
            color: white;
            margin-bottom: 15px;
            padding-bottom: 10px;
            border-bottom: 1px solid #444;
        }

        .foot_list1 dd, .foot_list2 dd {
            margin-bottom: 8px;
        }

        .foot_list3 p {
            font-size: 24px;
            color: var(--primary-color);
            font-weight: bold;
            margin-bottom: 15px;
        }

        .foot_list4 .sina, .foot_list4 .weixin {
            display: inline-block;
            width: 40px;
            height: 40px;
            background: #444;
            border-radius: 50%;
            text-align: center;
            line-height: 40px;
            margin-right: 10px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .foot_list4 .sina:hover {
            background: #e6162d;
        }

        .foot_list4 .weixin:hover {
            background: #2aae67;
        }

        .statist {
            width: 100%;
            text-align: center;
            padding-top: 20px;
            margin-top: 20px;
            border-top: 1px solid #444;
            font-size: 14px;
        }

        /* 移动端适配 */
        @media (max-width: 768px) {
            .header .container {
                flex-direction: column;
            }

            .nav {
                margin-top: 15px;
                flex-wrap: wrap;
                justify-content: center;
                gap: 15px;
            }

            .side_left {
                width: 100%;
                float: none;
                margin-right: 0;
                margin-bottom: 20px;
            }

            .brand_main {
                flex-direction: column;
            }

            .pic_list {
                grid-template-columns: repeat(2, 1fr);
            }

            .footer .container {
                flex-direction: column;
                gap: 30px;
            }
        }

        @media (max-width: 480px) {
            .search {
                flex-direction: column;
            }

            .search-fenlei {
                width: 100%;
                border-radius: 4px 4px 0 0;
                padding: 10px;
            }

            .input-btn {
                width: 100%;
                border-radius: 0 0 4px 4px;
            }

            .pic_list {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
<!-- 顶部导航 -->
<div class="shortcut">
    <div class="container">
        <div class="shortcut-left">
            <ul>
                <li class="item-more"><a rel="nofollow" href="http://m.ihuigo.com" target="_blank">手机逛回购</a></li>
                <li class="city">
                    <span>当前：北京市 <a rel="nofollow" href="javascript:void(0);" onclick="selectcity('city/select.html')">[切换城市]</a></span>
                </li>
            </ul>
        </div>
        <div class="shortcut-right">
            <ul id='login_show'>
                <%
                    // 用户登录状态逻辑
                    Object user = session.getAttribute("user");
                    boolean isLoggedIn = (user != null);
                    if (isLoggedIn) {
                %>
                <li><a href="${pageContext.request.contextPath}/account" rel="nofollow">欢迎回来，用户</a></li>
                <li><a href="${pageContext.request.contextPath}/logout" rel="nofollow">退出</a></li>
                <%
                } else {
                %>
                <li><a href="${pageContext.request.contextPath}/login" rel="nofollow">登录</a></li>
                <li><a href="${pageContext.request.contextPath}/register" rel="nofollow">注册</a></li>
                <%
                    }
                %>
            </ul>
        </div>
    </div>
</div>

<!-- 头部LOGO和主导航 -->
<div class="header">
    <div class="container">
        <h1 class="logo"><a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/images/logo.png" alt="回购网" title="二手手机回收交易网"/></a></h1>
        <div class="nav">
            <a href="${pageContext.request.contextPath}/goods" class="on">闲置回收</a>
            <a href="${pageContext.request.contextPath}/huanxin">旧机换新</a>
            <a href="${pageContext.request.contextPath}/youpin">二手优品</a>
            <a href="${pageContext.request.contextPath}/kucun" target="_blank" rel="nofollow">
                <img src="${pageContext.request.contextPath}/images/kc.gif" alt="库存" style="vertical-align:middle">
            </a>
        </div>
    </div>
</div>

<!-- 搜索区域 -->
<div class="new_search">
    <div class="container">
        <div class="search-box">
            <div class="search-title">搜一下，看看你的二手闲置还值多少钱</div>
            <div class="search">
                <div class="search-fenlei" id="search-fenlei">
                    <div class="set" id="all_type">手机</div>
                </div>
                <form name="top_goods_search" id="top_goods_search" action="${pageContext.request.contextPath}/search" method="get">
                    <input type="text" name="gname" id="top_name" value="请输入品牌型号搜索" class="input-txt"
                           onkeydown="if(event.keyCode==13) return top_search_goods();"
                           onFocus="if(this.value=='请输入品牌型号搜索'){this.value='';}"
                           onblur="if(this.value==''){this.value='请输入品牌型号搜索';}"/>
                    <input type="button" value="搜索" class="input-btn" onclick="top_search_goods()"/>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- 查询结果 -->
<div class="search_list">
    <div class="container">
        <div class="current">
            <a href="${pageContext.request.contextPath}/">首页</a><span>&gt;</span>
            <a href="${pageContext.request.contextPath}/goods">闲置回收</a><span>&gt;</span>
            <a href="${pageContext.request.contextPath}/ershoushouji">手机</a>
        </div>

        <div class="side_left">
            <dl class="side_list">
                <dt>搜索结果分类</dt>
                <dd class="item_on"><a href="${pageContext.request.contextPath}/ershoushouji" title="手机回收价格评估"><b class="item1">&nbsp;</b><em>手机</em></a></dd>
                <dd><a href="${pageContext.request.contextPath}/ershoupingguo" title="苹果系列回收价格评估"><b class="item2">&nbsp;</b><em>苹果系列</em></a></dd>
                <dd><a href="${pageContext.request.contextPath}/ershoupingban" title="平板电脑回收价格评估"><b class="item3">&nbsp;</b><em>平板电脑</em></a></dd>
                <dd><a href="${pageContext.request.contextPath}/ershoubijiben" title="笔记本回收价格评估"><b class="item4">&nbsp;</b><em>笔记本</em></a></dd>
                <dd><a href="${pageContext.request.contextPath}/ershoushumaxiangji" title="数码相机回收价格评估"><b class="item5">&nbsp;</b><em>数码相机</em></a></dd>
                <dd><a href="${pageContext.request.contextPath}/ershouyouxiji" title="游戏机回收价格评估"><b class="item6">&nbsp;</b><em>游戏机</em></a></dd>
                <dd><a href="${pageContext.request.contextPath}/ershoujingtou" title="镜头回收价格评估"><b class="item7">&nbsp;</b><em>镜头</em></a></dd>
                <dd><a href="${pageContext.request.contextPath}/wurenji" title="无人机回收价格评估"><b class="item8">&nbsp;</b><em>无人机</em></a></dd>
            </dl>

            <dl class="side_hot">
                <dt>最近热门回收</dt>
                <dd>
                    <div class="img2">
                        <img src="${pageContext.request.contextPath}/static/images/goods/f6a645a58a6b36cb42e8ef1af0364101.jpg" width="42" height="31" alt="ipad mini"/>
                    </div>
                    <div class="txt2">
                        <p><a href="${pageContext.request.contextPath}/goods/info/17015" title="ipad mini回收价格评估">ipad mini</a></p>
                        <span>462元</span>
                    </div>
                    <div class="clear"></div>
                </dd>
                <dd>
                    <div class="img2">
                        <img src="${pageContext.request.contextPath}/static/images/goods/sample.jpg" width="42" height="31" alt="iPhone 12"/>
                    </div>
                    <div class="txt2">
                        <p><a href="${pageContext.request.contextPath}/goods/info/21025" title="iPhone 12回收价格评估">iPhone 12</a></p>
                        <span>1980元</span>
                    </div>
                    <div class="clear"></div>
                </dd>
                <dd>
                    <div class="img2">
                        <img src="${pageContext.request.contextPath}/static/images/goods/sample2.jpg" width="42" height="31" alt="华为P40"/>
                    </div>
                    <div class="txt2">
                        <p><a href="${pageContext.request.contextPath}/goods/info/21026" title="华为P40回收价格评估">华为P40</a></p>
                        <span>1250元</span>
                    </div>
                    <div class="clear"></div>
                </dd>
            </dl>

            <ul class="hotline">
                <li><img src="${pageContext.request.contextPath}/images/icon30.png" alt="客服热线"><span>400-9608-558</span></li>
            </ul>
        </div>

        <div class="side_right">
            <!-- 全部手机品牌 -->
            <div class="brand">
                <div class="title2"><span><a href="${pageContext.request.contextPath}/goods"><strong>手机</strong> 品牌</a></span></div>
                <div class="brand_main">
                    <div class="brand_hot">
                        <a href="${pageContext.request.contextPath}/ershouhtc">HTC</a>
                        <a href="${pageContext.request.contextPath}/ershoumeizu">魅族</a>
                        <a href="${pageContext.request.contextPath}/ershoububugao">vivo</a>
                        <a href="${pageContext.request.contextPath}/ershoulianxiang">联想</a>
                    </div>
                    <div class="brand_hots">
                        <a href="${pageContext.request.contextPath}/ershouapple">苹果</a>
                        <a href="${pageContext.request.contextPath}/ershouhuawei">华为</a>
                        <a href="${pageContext.request.contextPath}/ershousamsung">三星</a>
                        <a href="${pageContext.request.contextPath}/ershouxiaomi">小米</a>
                    </div>
                </div>
            </div>

            <!-- 搜索结果 -->
            <div class="search_main">
                <div class="search_title">
                    <h2>手机回收</h2>
                    <span>搜索到<em> 1852 </em>个结果</span>
                </div>

                <dl class="pic_list">
                    <dd>
                        <div class="pic_list_box">
                            <div class="pic_list_img">
                                <a href="${pageContext.request.contextPath}/info" title="iPhone 13回收价格评估">
                                    <img src="http://img.ihuigo.com/goods/739b3910f020832305a94a6a96eec952.jpg" alt="iPhone 13"/>
                                </a>
                            </div>
                            <p class="name">iPhone 13</p>
                            <p class="pinggu"><a href="${pageContext.request.contextPath}/goods/info/21025" title="在线评估回收价格">立即估价</a></p>
                            <div class="hot"><img src="${pageContext.request.contextPath}/images/hot.png" alt="热门"/></div>
                        </div>
                    </dd>

                    <dd>
                        <div class="pic_list_box">
                            <div class="pic_list_img">
                                <a href="${pageContext.request.contextPath}/info" title="华为Mate 40回收价格评估">
                                    <img src="http://img.ihuigo.com/goods/sample_huawei.jpg" alt="华为Mate 40"/>
                                </a>
                            </div>
                            <p class="name">华为Mate 40</p>
                            <p class="pinggu"><a href="${pageContext.request.contextPath}/goods/info/21026" title="在线评估回收价格">立即估价</a></p>
                        </div>
                    </dd>

                    <dd>
                        <div class="pic_list_box">
                            <div class="pic_list_img">
                                <a href="${pageContext.request.contextPath}/info" title="小米11 Ultra回收价格评估">
                                    <img src="http://img.ihuigo.com/goods/sample_xiaomi.jpg" alt="小米11 Ultra"/>
                                </a>
                            </div>
                            <p class="name">小米11 Ultra</p>
                            <p class="pinggu"><a href="${pageContext.request.contextPath}/goods/info/21027" title="在线评估回收价格">立即估价</a></p>
                        </div>
                    </dd>

                    <dd>
                        <div class="pic_list_box">
                            <div class="pic_list_img">
                                <a href="${pageContext.request.contextPath}/info" title="三星Galaxy S21回收价格评估">
                                    <img src="http://img.ihuigo.com/goods/sample_samsung.jpg" alt="三星Galaxy S21"/>
                                </a>
                            </div>
                            <p class="name">三星Galaxy S21</p>
                            <p class="pinggu"><a href="${pageContext.request.contextPath}/goods/info/21028" title="在线评估回收价格">立即估价</a></p>
                        </div>
                    </dd>

                    <dd>
                        <div class="pic_list_box">
                            <div class="pic_list_img">
                                <a href="${pageContext.request.contextPath}/info" title="OPPO Find X3回收价格评估">
                                    <img src="http://img.ihuigo.com/goods/sample_oppo.jpg" alt="OPPO Find X3"/>
                                </a>
                            </div>
                            <p class="name">OPPO Find X3</p>
                            <p class="pinggu"><a href="${pageContext.request.contextPath}/goods/info/21029" title="在线评估回收价格">立即估价</a></p>
                            <div class="hot"><img src="${pageContext.request.contextPath}/images/hot.png" alt="热门"/></div>
                        </div>
                    </dd>

                    <dd>
                        <div class="pic_list_box">
                            <div class="pic_list_img">
                                <a href="${pageContext.request.contextPath}/info" title="vivo X60 Pro回收价格评估">
                                    <img src="http://img.ihuigo.com/goods/sample_vivo.jpg" alt="vivo X60 Pro"/>
                                </a>
                            </div>
                            <p class="name">vivo X60 Pro</p>
                            <p class="pinggu"><a href="${pageContext.request.contextPath}/goods/info/21030" title="在线评估回收价格">立即估价</a></p>
                        </div>
                    </dd>
                </dl>

                <div class="clear"></div>

                <div class="pageStr">
                    <div class="ihuigo_page">
                        <span class="cur_link">1</span>
                        <span><a href="${pageContext.request.contextPath}/ershoushouji/2">2</a></span>
                        <span><a href="${pageContext.request.contextPath}/ershoushouji/3">3</a></span>
                        <span><a href="${pageContext.request.contextPath}/ershoushouji/4">4</a></span>
                        <span><a href="${pageContext.request.contextPath}/ershoushouji/5">5</a></span>
                        <span>...</span>
                        <span><a href="${pageContext.request.contextPath}/ershoushouji/232">232</a></span>
                        <span class="next_link"><a href="${pageContext.request.contextPath}/ershoushouji/2">下一页</a></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 页脚 -->
<div class="footer">
    <div class="container">
        <dl class="foot_list1">
            <dt>关于我们</dt>
            <dd><a href="${pageContext.request.contextPath}/service/about" rel="nofollow" target="_blank">关于回购网</a></dd>
            <dd><a href="${pageContext.request.contextPath}/service/contact" target="_blank" rel="nofollow">联系我们</a></dd>
            <dd><a href="${pageContext.request.contextPath}/service/join" target="_blank" rel="nofollow">人才招聘</a></dd>
        </dl>

        <dl class="foot_list2">
            <dt>服务</dt>
            <dd><a href="${pageContext.request.contextPath}/service/terms" target="_blank" rel="nofollow">服务条款</a></dd>
            <dd><a href="${pageContext.request.contextPath}/service/suggestions" target="_blank" rel="nofollow">投诉建议</a></dd>
            <dd><a href="${pageContext.request.contextPath}/service/map" target="_blank">网站地图</a></dd>
        </dl>

        <dl class="foot_list3">
            <dt>客服热线</dt>
            <dd>
                <p>400-9608-558</p>
                <div>
                    <a href="${pageContext.request.contextPath}/html/hzsr" rel="nofollow" target="_blank" class="rk1">大客户入口</a>
                    <a href="${pageContext.request.contextPath}/html/hzs" rel="nofollow" target="_blank" class="rk2">合作商入口</a>
                </div>
            </dd>
        </dl>

        <dl class="foot_list4">
            <dt>关注我们</dt>
            <dd class="sina"><a href="http://e.weibo.com/ihuigo?topnav=11" rel="nofollow" target="_blank">微博</a></dd>
            <dd class="weixin"><a rel="nofollow" class="weixin2" target="_blank">微信</a></dd>
        </dl>

        <div class="statist">
            <p>
                <em>Copyright Reserved 2009-2025 @</em>
                回购网ihuigo.com版权所有
                <span><a href="#" target="_blank" rel="nofollow">粤ICP备10071783号</a></span>
            </p>
        </div>
    </div>
</div>

<script>
    // 搜索功能
    function top_search_goods() {
        var keyword = document.getElementById('top_name').value;
        if(keyword|| keyword !== '请输入品牌型号搜索') {
            document.getElementById('top_goods_search').submit();
        } else {
            alert('请输入要搜索的品牌型号');
        }
    }

    // 城市切换
    function selectcity(url) {
        alert('城市切换功能: ' + url);
        // 实际实现中这里应该是打开城市选择窗口
    }

    // 页面加载后执行
    $(document).ready(function() {
        // 商品悬停效果
        $('.pic_list_box').hover(
            function() {
                $(this).css({
                    'transform': 'translateY(-5px)',
                    'box-shadow': '0 10px 20px rgba(0,0,0,0.1)',
                    'border-color': '#ff6b00'
                });
            },
            function() {
                $(this).css({
                    'transform': 'translateY(0)',
                    'box-shadow': '0 2px 12px rgba(0,0,0,0.08)',
                    'border-color': '#eaeaea'
                });
            }
        );
    });
</script>
</body>
</html>