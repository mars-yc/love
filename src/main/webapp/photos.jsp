<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String ctx = request.getContextPath();
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Our Memory</title>

	<script src="<%= ctx%>/js/jquery-2.1.1.js"></script>

<meta http-equiv="imagetoolbar" content="no">
<style type="text/css">
	html {
		overflow: hidden;
	}
	body {
		position: absolute;
		margin: 0px;
		padding: 0px;
		background: #eee;
		width: 100%;
		height: 100%;
		color: #fff;
		font-family: arial;
		font-size: 0.8em;
	}
	#screen {
		position: absolute;
		width: 100%;
		height: 100%;
		background: #000;
		overflow: hidden;
	}
	#screen img, canvas { 
		position: absolute;
		left: -9999px;
		cursor: pointer;
        image-rendering: optimizeSpeed;

	}
	#screen .href {
		border: #FFF dotted 1px;
	}
	#screen .fog { 
		position: absolute;
		background: #fff;
		opacity: 0.1;
		filter: alpha(opacity=10);
	}
	#command {
		position:absolute;
		left: 1em;
		top: 1em;
		width: 130px;
		z-index: 30000;
		background:#000;
		border: #000 solid 1em;
	}
	#bar {
		position:relative;
		left: 1em;
		top: 1em;
		height: 160px;
	}
	#bar .button { 
		position: absolute;
		background: #222;
		width: 20px;
		height: 20px;
		cursor: pointer;
	}
	#bar .loaded { 
		background: #666;
	}
	#bar .viewed { 
		background: #fff;
	}
	#bar .selected { 
		background: #f00;
	}
	#urlInfo {
		position: absolute;
		background: url(photos/r.gif) no-repeat 0 4px;
		visibility: hidden;
		z-index: 30000;
		padding-left: 12px;
		cursor: pointer;
	}
</style>
</head>

<body>

<div id="audio-container">
</div>

<script type="text/javascript">
/* ==== start script ==== */
setTimeout(initPhotoWall, 500);

function initPhotoWall() {
    var m3D = function () {
		/* ---- private vars ---- */
        var diapo = [],
            imb,
            scr,
            bar,
            selected,
            urlInfo,
            imagesPath = "photos/",
            camera = {x:0, y:0, z:-650, s:0, fov: 500},
            nw = 0,
            nh = 0;
		/* ==== camera tween methods ==== */
        camera.setTarget = function (c0, t1, p) {
            if (Math.abs(t1 - c0) > .1) {
                camera.s = 1;
                camera.p = 0;
                camera.d = t1 - c0;
                if (p) {
                    camera.d *= 2;
                    camera.p = 9;
                }
            }
        }
        camera.tween = function (v) {
            if (camera.s != 0) {
                camera.p += camera.s;
                camera[v] += camera.d * camera.p * .01;
                if (camera.p == 10) camera.s = -1;
                else if (camera.p == 0) camera.s = 0;
            }
            return camera.s;
        }
		/* ==== diapo constructor ==== */
        var Diapo = function (n, img, x, y, z) {
            if (img) {
                this.url = img.url;
                this.title = img.title;
                this.color = img.color;
                this.isLoaded = false;
                if (document.createElement("canvas").getContext) {
					/* ---- using canvas in place of images (performance trick) ---- */
                    this.srcImg = new Image();
                    this.srcImg.src = imagesPath + img.src;
                    this.img = document.createElement("canvas");
                    this.canvas = true;
                    scr.appendChild(this.img);
                } else {
					/* ---- normal image ---- */
                    this.img = document.createElement('img');
                    this.img.src = imagesPath + img.src;
                    scr.appendChild(this.img);
                }
				/* ---- on click event ---- */
                this.img.onclick = function () {
                    if (camera.s) return;
                    if (this.diapo.isLoaded) {
                        if (this.diapo.urlActive) {
							/* ---- jump hyperlink ---- */
                            top.location.href = this.diapo.url;
                        } else {
							/* ---- target positions ---- */
                            camera.tz = this.diapo.z - camera.fov;
                            camera.tx = this.diapo.x;
                            camera.ty = this.diapo.y;
							/* ---- disable previously selected img ---- */
                            if (selected) {
                                selected.but.className = "button viewed";
                                selected.img.className = "";
                                selected.img.style.cursor = "pointer";
                                selected.urlActive = false;
                                urlInfo.style.visibility = "hidden";
                            }
							/* ---- select current img ---- */
                            this.diapo.but.className = "button selected";
                            interpolation(false);
                            selected = this.diapo;
                        }
                    }
                }
				/* ---- command bar buttons ---- */
                this.but = document.createElement('div');
                this.but.className = "button";
                bar.appendChild(this.but);
                this.but.diapo = this;
                this.but.style.left = Math.round((this.but.offsetWidth  * 1.2) * (n % 4)) + 'px';
                this.but.style.top  = Math.round((this.but.offsetHeight * 1.2) * Math.floor(n / 4)) + 'px';
                this.but.onclick = this.img.onclick;
                imb = this.img;
                this.img.diapo = this;
                this.zi = 25000;
            } else {
				/* ---- transparent div ---- */
                this.img = document.createElement('div');
                this.isLoaded = true;
                this.img.className = "fog";
                scr.appendChild(this.img);
                this.w = 300;
                this.h = 300;
                this.zi = 15000;
            }
			/* ---- object variables ---- */
            this.x = x;
            this.y = y;
            this.z = z;
            this.css = this.img.style;
        }
		/* ==== main.js 3D animation ==== */
        Diapo.prototype.anim = function () {
            if (this.isLoaded) {
				/* ---- 3D to 2D projection ---- */
                var x = this.x - camera.x;
                var y = this.y - camera.y;
                var z = this.z - camera.z;
                if (z < 20) z += 5000;
                var p = camera.fov / z;
                var w = this.w * p;
                var h = this.h * p;
				/* ---- HTML rendering ---- */
                this.css.left   = Math.round(nw + x * p - w * .5) + 'px';
                this.css.top    = Math.round(nh + y * p - h * .5) + 'px';
                this.css.width  = Math.round(w) + 'px';
                this.css.height = Math.round(h) + 'px';
                this.css.zIndex = this.zi - Math.round(z);
            } else {
				/* ---- image is loaded? ---- */
                this.isLoaded = this.loading();
            }
        }
		/* ==== onload initialization ==== */
        Diapo.prototype.loading = function () {
            if ((this.canvas && this.srcImg.complete) || this.img.complete) {
                if (this.canvas) {
					/* ---- canvas version ---- */
                    this.w = this.srcImg.width;
                    this.h = this.srcImg.height;
                    this.img.width = this.w;
                    this.img.height = this.h;
                    var context = this.img.getContext("2d");
                    context.drawImage(this.srcImg, 0, 0, this.w, this.h);
                } else {
					/* ---- plain image version ---- */
                    this.w = this.img.width;
                    this.h = this.img.height;
                }
				/* ---- button loaded ---- */
                this.but.className += " loaded";
                return true;
            }
            return false;
        }
        ////////////////////////////////////////////////////////////////////////////
		/* ==== screen dimensions ==== */
        var resize = function () {
            nw = scr.offsetWidth * .5;
            nh = scr.offsetHeight * .5;
        }
		/* ==== disable interpolation during animation ==== */
        var interpolation = function (bicubic) {
            var i = 0, o;
            while( o = diapo[i++] ) {
                if (o.but) {
                    o.css.msInterpolationMode = bicubic ? 'bicubic' : 'nearest-neighbor'; // makes IE8 happy
                    o.css.imageRendering = bicubic ? 'optimizeQuality' : 'optimizeSpeed'; // does not really work...
                }
            }
        }
		/* ==== init script ==== */
        var init = function (data) {
			/* ---- containers ---- */
            scr = document.getElementById("screen");
            bar = document.getElementById("bar");
            urlInfo = document.getElementById("urlInfo");
            resize();
			/* ---- loading images ---- */
            var i = 0,
                o,
                n = data.length;
            while( o = data[i++] ) {
				/* ---- images ---- */
                var x = 1000 * ((i % 4) - 1.5);
                var y = Math.round(Math.random() * 4000) - 2000;
                var z = i * (5000 / n);
                diapo.push( new Diapo(i - 1, o, x, y, z));
				/* ---- transparent frames ---- */
                var k = diapo.length - 1;
                for (var j = 0; j < 3; j++) {
                    var x = Math.round(Math.random() * 4000) - 2000;
                    var y = Math.round(Math.random() * 4000) - 2000;
                    diapo.push( new Diapo(k, null, x, y, z + 100));
                }
            }
			/* ---- start engine ---- */
            run();
        }
        ////////////////////////////////////////////////////////////////////////////
		/* ==== main.js loop ==== */
        var run = function () {
			/* ---- x axis move ---- */
            if (camera.tx) {
                if (!camera.s) camera.setTarget(camera.x, camera.tx);
                var m = camera.tween('x');
                if (!m) camera.tx = 0;
				/* ---- y axis move ---- */
            } else if (camera.ty) {
                if (!camera.s) camera.setTarget(camera.y, camera.ty);
                var m = camera.tween('y');
                if (!m) camera.ty = 0;
				/* ---- z axis move ---- */
            } else if (camera.tz) {
                if (!camera.s) camera.setTarget(camera.z, camera.tz);
                var m = camera.tween('z');
                if (!m) {
					/* ---- animation end ---- */
                    camera.tz = 0;
                    interpolation(true);
					/* ---- activate hyperlink ---- */
                    if (selected.url) {
                        selected.img.style.cursor = "pointer";
                        selected.urlActive = true;
                        selected.img.className = "href";
                        urlInfo.diapo = selected;
                        urlInfo.onclick = selected.img.onclick;
                        urlInfo.innerHTML = selected.title || selected.url;
                        urlInfo.style.visibility = "visible";
                        urlInfo.style.color = selected.color || "#fff";
                        urlInfo.style.top = Math.round(selected.img.offsetTop + selected.img.offsetHeight - urlInfo.offsetHeight - 5) + "px";
                        urlInfo.style.left = Math.round(selected.img.offsetLeft + selected.img.offsetWidth - urlInfo.offsetWidth - 5) + "px";
                    } else {
                        selected.img.style.cursor = "default";
                    }
                }
            }
			/* ---- anim images ---- */
            var i = 0, o;
            while( o = diapo[i++] ) o.anim();
			/* ---- loop ---- */
            setTimeout(run, 32);
        }
        return {
            ////////////////////////////////////////////////////////////////////////////
			/* ==== initialize script ==== */
            init : init
        }
    }();

    $('#screen').remove();
    $('<div id="screen"><div id="command"><h1>Photo Wall</h1>Cherish Every Moment<div id="bar"></div></div><div id="urlInfo"></div></div>').insertAfter('#audio-container');

    m3D.init(
        [
            { src: 'photo-1.png', url: '<%= ctx%>', title: '返回主页', color: '#fff' },
            { src: 'photo-31.png' },
            { src: 'photo-39.png' },
            { src: 'photo-32.png' },
            { src: 'photo-34.png' },
            { src: 'photo-2.png' },
            { src: 'photo-3.png' },
            { src: 'photo-4.png' },
            { src: 'photo-5.png' },
            { src: 'photo-6.png' },
            { src: 'photo-7.png' },
            { src: 'photo-8.png' },
            { src: 'photo-11.png', url: '<%= ctx%>', title: '返回主页', color: '#fff' }
        ]
    );
}

Module = {

    autoDisplayFlag: true,
	displayInterval: 4000,
	imgSnapDivs: [],
	intervalId: 0,
	currentIndex: 0,
    audioSrcUrlLoveFromOversea: 'audio/love-from-oversea.mp3',
    audioSrcUrlFootprintOfRain: 'audio/footprint-of-rain.mp3',

	displayPhotos: function () {
        var totalDivs = Module.imgSnapDivs.size();
        if(Module.autoDisplayFlag) {
            Module.imgSnapDivs[Module.currentIndex].click();
            Module.currentIndex++;
            if(Module.currentIndex >= totalDivs)
                Module.currentIndex = 0;
		} else {
            clearInterval(Module.intervalId);
		}
    },

	autoDisplay: function () {
        <%--
        	If you change the src of EMBED, the mp3 won't be loaded
			So, need to append the EMBED by dynamic
		--%>
		Module.startAudio(Module.audioSrcUrlLoveFromOversea);
        Module.bindEventToStopAutoDisplay();
        Module.imgSnapDivs = $('#bar').find('div');
        Module.intervalId = setInterval(Module.displayPhotos, Module.displayInterval);
	},

	startAudio: function (audioUrl) {
        $("#audio-container").children().remove();
        //$('<embed src="' + audioUrl + '" autostart="true" loop="20" width=0 height=0>').appendTo($("#audio-container"));
        $('<embed src="' + audioUrl + '" autostart="true" loop="true" hidden="true"></embed>').appendTo($("#audio-container"));
		//$('<bgsound src="' + audioUrl + '"autostart=true loop=infinite>').appendTo($("#audio-container"));
    },

	bindEventToStopAutoDisplay: function () {
        $('body').bind('contextmenu', function() {
            if(Module.autoDisplayFlag) {
                Module.autoDisplayFlag = false;
                Module.startAudio(Module.audioSrcUrlFootprintOfRain);
                initPhotoWall();
            }
            return false;
        });
	}

}

window.onload = function () {
    setTimeout(function () {
        Module.autoDisplay();
    }, 1000);
}
</script>
</body>
</html>
