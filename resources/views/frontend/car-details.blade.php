@extends('frontend.layouts.header')
@section('content')
    <style>
        .box_shadow {
            box-shadow: rgba(0, 0, 0, 0.16) 0px 10px 36px 0px, rgba(0, 0, 0, 0.06) 0px 0px 0px 1px;
        }

        .text_theme {
            color: #FFBA00 !important;
        }

        .fs_12 {
            font-size: 12px;
        }

        .fs_13 {
            font-size: 13px;
        }

        .search_btn {
            height: 40px;
            width: 48px;
            border-radius: 5px;
            margin-left: 5px;
        }

        .search_input {
            width: 320px;
            border-radius: 5px;
            height: 40px;
        }

        .search_div {
            display: flex;
        }

        .icon_color {
            color: #EE850B;
        }

        .icon_green {
            color: #1ed700;
        }

        .min_width_180 {
            min-width: 180px;
        }

        .open_div {
            background: #d9fdd3;
            border: solid 1px #1ed700;
            align-items: center;
        }

        .open_div:hover {
            cursor: pointer;
        }

        #arrow_right {
            transition: 0.3s;
        }

        .bg_gold {
            background-color: #FFBA00 !important;
        }

        .border_gold {
            border: 1px solid #FFBA00;
        }

        .spec_icon{
            font-size: 14px;
        }

        .spec_icon:hover{
            color: #FFBA00 !important;
            cursor: pointer;
        }

        .bg_grey {
            background-color: #4D4D4D;
        }

        .bg_green {
            background-color: #7CC67C;
        }

        .icon {
            height: 47px;
            width: 47px;
        }

        .icon:hover {
            cursor: pointer;
        }

        .styled_button {
            background-color: #FFBA00;
            border: none;
            color: white;
            padding: 5px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 5px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: 0.3s;
        }

        .styled_button:hover {
            background-color: #4D4D4D;
            box-shadow: 0 6px 8px rgba(0, 0, 0, 0.15);
            color: #fff;
        }

        .carousel__dots .carousel__dot.is-selected:after,
        .round input[type=checkbox]:checked+label:after {
            opacity: 1
        }

        .is-loading .fancybox__caption,
        .round input[type=radia] {
            visibility: hidden
        }

        #mainCarousel,
        .fancybox__container {
            --carousel-button-svg-stroke-width: 2.5
        }

        .carousel__track,
        .checkbox,
        .contmnbox,
        .dflex {
            display: flex
        }

        @media(max-width: 1025px) {
            #mainCarousel .carousel__slide {
                width: auto
            }

            .carousel__slide img {
                object-position: center;
                object-fit: cover;
                width: 100%
            }

            #mainCarousel {
                width: 100%;
                text-align: center;
                margin: 0 auto .3rem;
                --carousel-button-color: #ffffff;
                --carousel-button-bg: #fff;
                --carousel-button-shadow: 0 2px 1px -1px #fff 0 1px 1px 0 #fff 0 1px 3px 0 #fff
            }

            #mainCarousel .carousel__slide {
                width: 100%;
                padding: 0
            }

            #thumbCarousel .carousel__slide {
                opacity: 1;
                padding: 0;
                margin: .25rem;
                width: 100px;
                height: 70px
            }

            #thumbCarousel .carousel__slide img {
                width: 100%;
                height: 70px;
                object-fit: cover;
                border-radius: 4px
            }

            #mainCarousel:hover .carousel__nav,
            #thumbCarousel .carousel__slide.is-nav-selected {
                opacity: 1
            }

            #thumbCarousel .is-nav-selected img.panzoom__content {
                border: 3px solid #ed8413
            }

            .panzoom {
                position: relative;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center
            }

            .panzoom__viewport {
                position: relative;
                width: 100%;
                height: 100%;
                min-height: 1px;
                margin: auto
            }

            .panzoom__content {
                max-width: 100%;
                max-height: 100%;
                transform: translate3d(0, 0, 0) scale(1);
                transform-origin: 0 0;
                transition: none;
                touch-action: none;
                user-select: none
            }

            .carousel.is-draggable,
            .is-draggable {
                cursor: move;
                cursor: grab
            }

            .is-dragging {
                cursor: grabbing
            }

            .not-selectable {
                -moz-user-select: none;
                -webkit-user-select: none;
                -ms-user-select: none;
                user-select: none
            }

            .carousel {
                position: relative;
                box-sizing: border-box
            }

            .carousel *,
            .carousel :after,
            .carousel :before {
                box-sizing: inherit
            }

            .carousel.is-dragging {
                cursor: move;
                cursor: grabbing
            }

            .carousel__viewport {
                position: relative;
                overflow: hidden;
                max-width: 100%;
                max-height: 100%
            }

            .carousel__slide {
                flex: 0 0 auto;
                width: var(--carousel-slide-width, 60%);
                max-width: 100%;
                padding: 1rem;
                position: relative;
                overscroll-behavior: contain;
                -webkit-overflow-scrolling: touch;
                touch-action: pan-y
            }

            .has-dots {
                margin-bottom: calc(.5rem+22px)
            }

            .carousel__dots {
                margin: 0 auto;
                padding: 0;
                position: absolute;
                top: calc(100% + -2rem);
                left: 0;
                right: 0;
                display: inline-flex;
                justify-content: center;
                list-style: none;
                user-select: none;
                width: 95%
            }

            .carousel__dots .carousel__dot {
                margin: 0 3px;
                padding: 0;
                display: block;
                position: relative;
                width: 100%;
                height: 6px;
                cursor: pointer
            }

            .carousel__dots .carousel__dot:after {
                content: "";
                width: 100%;
                height: 5px;
                border-radius: 0;
                position: absolute;
                top: 50%;
                left: 50%;
                border-radius: 8px;
                transform: translate(-50%, -50%);
                background-color: #fff;
                opacity: .5;
                transition: opacity .15s ease-in-out
            }
        }

        .carousel__button {
            width: var(--carousel-button-width, 35px);
            height: var(--carousel-button-height, 35px);
            padding: 0;
            border: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            pointer-events: all;
            cursor: pointer;
            color: var(--carousel-button-color, currentColor);
            background: #0000006e;
            box-shadow: var(--carousel-button-shadow, none);
            transition: opacity .15s
        }

        .carousel__button.is-next,
        .carousel__button.is-prev {
            position: absolute;
            top: 50%;
            transform: translateY(-50%)
        }

        .carousel__button.is-prev {
            left: 10px
        }

        .carousel__button.is-next {
            right: 10px
        }

        .carousel__button[disabled] {
            cursor: default;
            opacity: .3
        }

        .carousel__button.is-close,
        .carousel__dots,
        .fancybox__backdrop,
        .fancybox__caption,
        .fancybox__nav,
        .fancybox__thumbs,
        .fancybox__toolbar {
            opacity: var(--fancybox-opacity, 1)
        }

        .carousel__nav,
        .fancybox__container.is-animated.is-closing .fancybox__thumbs,
        .fancybox__container.is-animated.is-closing .fancybox__toolbar {
            opacity: 0
        }

        .carousel__button svg {
            width: var(--carousel-button-svg-width, 50%);
            height: var(--carousel-button-svg-height, 50%);
            fill: none;
            stroke: #fff;
            stroke-width: var(--carousel-button-svg-stroke-width, 1.5);
            stroke-linejoin: bevel;
            stroke-linecap: round;
            filter: var(--carousel-button-svg-filter, none);
            pointer-events: none
        }

        html.with-fancybox {
            scroll-behavior: auto
        }

        body.compensate-for-scrollbar {
            overflow: hidden !important;
            touch-action: none
        }

        .fancybox__container {
            position: fixed;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;
            direction: ltr;
            margin: 0;
            padding: env(safe-area-inset-top, 0) env(safe-area-inset-right, 0) env(safe-area-inset-bottom, 0) env(safe-area-inset-left, 0);
            box-sizing: border-box;
            display: flex;
            flex-direction: column;
            color: var(--fancybox-color, #fff);
            -webkit-tap-highlight-color: transparent;
            overflow: hidden;
            z-index: 9999;
            outline: 0;
            transform-origin: top left;
            --carousel-button-width: 48px;
            --carousel-button-height: 48px;
            --carousel-button-svg-width: 24px;
            --carousel-button-svg-height: 24px;
            --carousel-button-svg-filter: drop-shadow(1px 1px 1px rgba(0, 0, 0, 0.4))
        }

        .fancybox__container *,
        .fancybox__container ::after,
        .fancybox__container ::before {
            box-sizing: inherit
        }

        #mainCarousel .carousel__button:focus,
        .fancybox__container :focus,
        .feedbackmain button:focus {
            outline: 0
        }

        body:not(.is-using-mouse) .fancybox__container :focus {
            box-shadow: 0 0 0 1px #fff, 0 0 0 2px var(--fancybox-accent-color, rgba(1, 210, 232, .94))
        }

        .fancybox__backdrop {
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            z-index: -1;
            background: var(--fancybox-bg, rgba(24, 24, 27, .92))
        }

        .fancybox__carousel {
            position: relative;
            flex: 1 1 auto;
            min-height: 0;
            height: 100%;
            z-index: 10
        }

        .fancybox__carousel.has-dots {
            margin-bottom: calc(.5rem+22px)
        }

        .fancybox__viewport {
            position: relative;
            width: 100%;
            height: 100%;
            overflow: visible;
            cursor: default
        }

        .fancybox__track {
            display: flex;
            height: 100%
        }

        .fancybox__slide {
            flex: 0 0 auto;
            width: 100%;
            max-width: 100%;
            margin: 0;
            padding: 48px 8px 8px;
            position: relative;
            overscroll-behavior: contain;
            display: flex;
            flex-direction: column;
            outline: 0;
            overflow: auto;
            -webkit-overflow-scrolling: touch;
            --carousel-button-width: 36px;
            --carousel-button-height: 36px;
            --carousel-button-svg-width: 22px;
            --carousel-button-svg-height: 22px
        }

        #mainCarousel,
        .fancybox__toolbar {
            --carousel-button-svg-width: 20px;
            --carousel-button-svg-height: 20px
        }

        .fancybox__slide::after,
        .fancybox__slide::before {
            content: "";
            flex: 0;
            margin: auto
        }

        .fancybox__content {
            margin: 0 env(safe-area-inset-right, 0) 0 env(safe-area-inset-left, 0);
            padding: 36px;
            color: var(--fancybox-content-color, #374151);
            background: var(--fancybox-content-bg, #fff);
            position: relative;
            align-self: center;
            display: flex;
            flex-direction: column;
            z-index: 20
        }

        .fancybox__caption,
        .fancybox__spinner {
            color: var(--fancybox-color, currentColor)
        }

        .fancybox__content :focus:not(.carousel__button.is-close) {
            outline: dotted thin;
            box-shadow: none
        }

        .fancybox__caption {
            align-self: center;
            max-width: 100%;
            margin: 0;
            padding: 1rem 0 0;
            line-height: 1.375;
            visibility: visible;
            cursor: auto;
            flex-shrink: 0;
            overflow-wrap: anywhere
        }

        .fancybox__container>.carousel__dots {
            top: 100%;
            color: var(--fancybox-color, #fff)
        }

        .fancybox__nav .carousel__button {
            z-index: 40
        }

        .fancybox__nav .carousel__button.is-next {
            right: 8px
        }

        .fancybox__nav .carousel__button.is-prev {
            left: 8px
        }

        .carousel__button.is-close {
            position: absolute;
            top: 8px;
            right: 8px;
            top: calc(env(safe-area-inset-top, 0)+8px);
            right: calc(env(safe-area-inset-right, 0)+8px);
            z-index: 40
        }

        .fancybox__content>.carousel__button.is-close {
            position: absolute;
            top: -40px;
            right: 0;
            color: var(--fancybox-color, #fff)
        }

        .fancybox__no-click,
        .fancybox__no-click button {
            pointer-events: none
        }

        .fancybox__spinner {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 50px;
            height: 50px
        }

        .fancybox__slide .fancybox__spinner {
            cursor: pointer;
            z-index: 1053
        }

        .fancybox__spinner svg {
            animation: 2s linear infinite fancybox-rotate;
            transform-origin: center center;
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            margin: auto;
            width: 100%;
            height: 100%
        }

        .fancybox__spinner svg circle {
            fill: none;
            stroke-width: 2.75;
            stroke-miterlimit: 10;
            stroke-dasharray: 1, 200;
            stroke-dashoffset: 0;
            animation: 1.5s ease-in-out infinite fancybox-dash;
            stroke-linecap: round;
            stroke: currentColor
        }

        @keyframes fancybox-rotate {
            100% {
                transform: rotate(360deg)
            }
        }

        @keyframes fancybox-dash {
            0 {
                stroke-dasharray: 1, 200;
                stroke-dashoffset: 0
            }

            50% {
                stroke-dasharray: 89, 200;
                stroke-dashoffset: -35px
            }

            100% {
                stroke-dasharray: 89, 200;
                stroke-dashoffset: -124px
            }
        }

        .fancybox__container.is-animated[aria-hidden=false] .carousel__button.is-close,
        .fancybox__container.is-animated[aria-hidden=false] .carousel__dots,
        .fancybox__container.is-animated[aria-hidden=false] .fancybox__backdrop,
        .fancybox__container.is-animated[aria-hidden=false] .fancybox__caption,
        .fancybox__container.is-animated[aria-hidden=false] .fancybox__nav {
            animation: .15s backwards fancybox-fadeIn
        }

        .fancybox__container.is-animated.is-closing .carousel__button.is-close,
        .fancybox__container.is-animated.is-closing .carousel__dots,
        .fancybox__container.is-animated.is-closing .fancybox__backdrop,
        .fancybox__container.is-animated.is-closing .fancybox__caption,
        .fancybox__container.is-animated.is-closing .fancybox__nav {
            animation: .15s both fancybox-fadeOut
        }

        .fancybox__container.is-animated[aria-hidden=false] .fancybox__thumbs,
        .fancybox__container.is-animated[aria-hidden=false] .fancybox__toolbar {
            animation: .15s ease-in backwards fancybox-fadeIn
        }

        .fancybox-fadeIn {
            animation: .15s both fancybox-fadeIn
        }

        .fancybox-fadeOut {
            animation: .1s both fancybox-fadeOut
        }

        .fancybox-zoomInUp {
            animation: .2s both fancybox-zoomInUp
        }

        .fancybox-zoomOutDown {
            animation: .15s both fancybox-zoomOutDown
        }

        .fancybox-throwOutUp {
            animation: .15s both fancybox-throwOutUp
        }

        .fancybox-throwOutDown {
            animation: .15s both fancybox-throwOutDown
        }

        @keyframes fancybox-fadeIn {
            from {
                opacity: 0
            }

            to {
                opacity: 1
            }
        }

        @keyframes fancybox-fadeOut {
            to {
                opacity: 0
            }
        }

        @keyframes fancybox-zoomInUp {
            from {
                transform: scale(.97) translate3d(0, 16px, 0);
                opacity: 0
            }

            to {
                transform: scale(1) translate3d(0, 0, 0);
                opacity: 1
            }
        }

        @keyframes fancybox-zoomOutDown {
            to {
                transform: scale(.97) translate3d(0, 16px, 0);
                opacity: 0
            }
        }

        @keyframes fancybox-throwOutUp {
            to {
                transform: translate3d(0, -30%, 0);
                opacity: 0
            }
        }

        @keyframes fancybox-throwOutDown {
            to {
                transform: translate3d(0, 30%, 0);
                opacity: 0
            }
        }

        .fancybox__carousel .carousel__slide {
            scrollbar-width: thin;
            scrollbar-color: #ccc rgba(255, 255, 255, .1)
        }

        .fancybox__carousel .carousel__slide::-webkit-scrollbar {
            width: 8px;
            height: 8px
        }

        .fancybox__carousel .carousel__slide::-webkit-scrollbar-track {
            background-color: rgba(255, 255, 255, .1)
        }

        .fancybox__carousel .carousel__slide::-webkit-scrollbar-thumb {
            background-color: #ccc;
            border-radius: 2px;
            box-shadow: inset 0 0 4px rgba(0, 0, 0, .2)
        }

        .fancybox__carousel .fancybox__slide.is-draggable .fancybox__content,
        .fancybox__carousel.is-draggable .fancybox__slide,
        .fancybox__carousel.is-draggable .fancybox__slide .fancybox__content {
            cursor: move;
            cursor: grab
        }

        .fancybox__carousel .fancybox__slide.is-dragging .fancybox__content,
        .fancybox__carousel.is-dragging .fancybox__slide,
        .fancybox__carousel.is-dragging .fancybox__slide .fancybox__content {
            cursor: move;
            cursor: grabbing
        }

        .fancybox__carousel .fancybox__slide .fancybox__content {
            cursor: auto
        }

        .fancybox__carousel .fancybox__slide.can-zoom_in .fancybox__content {
            cursor: zoom-in
        }

        .fancybox__carousel .fancybox__slide.can-zoom_out .fancybox__content {
            cursor: zoom-out
        }

        .fancybox__image {
            transform-origin: 0 0;
            touch-action: none;
            user-select: none;
            transition: none
        }

        .has-image .fancybox__content {
            padding: 0;
            background: 0;
            min-height: 1px
        }

        .is-closing .has-image .fancybox__content {
            overflow: visible
        }

        .has-image[data-image-fit=contain],
        .has-image[data-image-fit=cover] {
            overflow: visible;
            touch-action: none
        }

        .has-image[data-image-fit=contain] .fancybox__content {
            flex-direction: row;
            flex-wrap: wrap
        }

        .has-image[data-image-fit=contain] .fancybox__image {
            max-width: 100%;
            max-height: 100%;
            object-fit: contain
        }

        .has-image[data-image-fit=contain-w] {
            overflow-x: hidden;
            overflow-y: auto
        }

        .has-image[data-image-fit=contain-w] .fancybox__content {
            min-height: auto
        }

        .has-image[data-image-fit=contain-w] .fancybox__image {
            max-width: 100%;
            height: auto
        }

        .has-image[data-image-fit=cover] .fancybox__content {
            width: 100%;
            height: 100%
        }

        .has-image[data-image-fit=cover] .fancybox__image {
            width: 100%;
            height: 100%;
            object-fit: cover
        }

        .fancybox__carousel .fancybox__slide.has-html5video .fancybox__content,
        .fancybox__carousel .fancybox__slide.has-iframe .fancybox__content,
        .fancybox__carousel .fancybox__slide.has-map .fancybox__content,
        .fancybox__carousel .fancybox__slide.has-pdf .fancybox__content,
        .fancybox__carousel .fancybox__slide.has-video .fancybox__content {
            flex-shrink: 1;
            min-height: 1px;
            overflow: visible
        }

        .fancybox__carousel .fancybox__slide.has-iframe .fancybox__content,
        .fancybox__carousel .fancybox__slide.has-map .fancybox__content,
        .fancybox__carousel .fancybox__slide.has-pdf .fancybox__content {
            width: 100%;
            height: 80%
        }

        .fancybox__carousel .fancybox__slide.has-html5video .fancybox__content,
        .fancybox__carousel .fancybox__slide.has-video .fancybox__content {
            width: 960px;
            height: 540px;
            max-width: 100%;
            max-height: 100%
        }

        .fancybox__carousel .fancybox__slide.has-html5video .fancybox__content,
        .fancybox__carousel .fancybox__slide.has-map .fancybox__content,
        .fancybox__carousel .fancybox__slide.has-pdf .fancybox__content,
        .fancybox__carousel .fancybox__slide.has-video .fancybox__content {
            padding: 0;
            background: rgba(24, 24, 27, .9);
            color: #fff
        }

        .fancybox__carousel .fancybox__slide.has-map .fancybox__content {
            background: #e5e3df
        }

        .fancybox__html5video,
        .fancybox__iframe {
            border: 0;
            display: block;
            height: 100%;
            width: 100%;
            background: 0
        }

        .fancybox-placeholder {
            position: absolute;
            width: 1px;
            height: 1px;
            padding: 0;
            margin: -1px;
            overflow: hidden;
            clip: rect(0, 0, 0, 0);
            white-space: nowrap;
            border-width: 0
        }

        .fancybox__thumbs {
            flex: 0 0 auto;
            position: relative;
            padding: 0 3px
        }

        .fancybox__thumbs .carousel__slide {
            flex: 0 0 auto;
            width: var(--fancybox-thumbs-width, 96px);
            margin: 0;
            padding: 8px 3px;
            box-sizing: content-box;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: visible;
            cursor: pointer
        }

        .fancybox__thumbs .carousel__slide .fancybox__thumb::after {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            opacity: 0;
            transition: opacity .15s;
            border-radius: var(--fancybox-thumbs-border-radius, 4px)
        }

        .fancybox__thumbs .carousel__slide.is-nav-selected .fancybox__thumb::after {
            opacity: .92
        }

        .fancybox__thumbs .carousel__slide>* {
            pointer-events: none;
            user-select: none
        }

        .fancybox__thumb {
            position: relative;
            width: 100%;
            padding-top: calc(100%/(var(--fancybox-thumbs-ratio, 1.5)));
            background-size: cover;
            background-position: center center;
            background-color: rgba(255, 255, 255, .1);
            background-repeat: no-repeat;
            border-radius: var(--fancybox-thumbs-border-radius, 4px)
        }

        .fancybox__toolbar {
            position: absolute;
            top: 0;
            right: 0;
            left: 0;
            z-index: 20;
            background: linear-gradient(to top, rgba(0, 0, 0, 0) 0, rgba(0, 0, 0, .006) 8.1%, rgba(0, 0, 0, .021) 15.5%, rgba(0, 0, 0, .046) 22.5%, rgba(0, 0, 0, .077) 29%, rgba(0, 0, 0, .114) 35.3%, rgba(0, 0, 0, .155) 41.2%, rgba(0, 0, 0, .198) 47.1%, rgba(0, 0, 0, .242) 52.9%, rgba(0, 0, 0, .285) 58.8%, rgba(0, 0, 0, .326) 64.7%, rgba(0, 0, 0, .363) 71%, rgba(0, 0, 0, .394) 77.5%, rgba(0, 0, 0, .419) 84.5%, rgba(0, 0, 0, .434) 91.9%, rgba(0, 0, 0, .44) 100%);
            padding: 0;
            touch-action: none;
            display: flex;
            justify-content: space-between;
            text-shadow: var(--fancybox-toolbar-text-shadow, 1px 1px 1px rgba(0, 0, 0, .4))
        }

        @media all and (min-width: 1024px) {
            .fancybox__container {
                --carousel-button-width: 48px;
                --carousel-button-height: 48px;
                --carousel-button-svg-width: 27px;
                --carousel-button-svg-height: 27px
            }

            .fancybox__slide {
                padding: 64px 100px
            }

            .carousel__button.is-close,
            .fancybox__nav .carousel__button.is-next {
                right: 40px
            }

            .fancybox__nav .carousel__button.is-prev {
                left: 40px
            }

            .fancybox__toolbar {
                padding: 8px
            }
        }

        .fancybox__toolbar__items {
            display: flex
        }

        .fancybox__toolbar__items--left {
            margin-right: auto
        }

        .fancybox__toolbar__items--center {
            position: absolute;
            left: 50%;
            transform: translateX(-50%)
        }

        .fancybox__toolbar__items--right {
            margin-left: auto
        }

        @media(max-width: 640px) {
            .fancybox__toolbar__items--center:not(:last-child) {
                display: none
            }
        }

        .fancybox__counter {
            min-width: 72px;
            padding: 0 10px;
            line-height: var(--carousel-button-height, 48px);
            text-align: center;
            font-size: 17px;
            font-variant-numeric: tabular-nums;
            -webkit-font-smoothing: subpixel-antialiased
        }

        .fancybox__progress {
            background: var(--fancybox-accent-color, rgba(34, 213, 233, .96));
            height: 3px;
            left: 0;
            position: absolute;
            right: 0;
            top: 0;
            transform: scaleX(0);
            transform-origin: 0 0;
            transition-property: transform;
            transition-timing-function: linear;
            z-index: 30;
            user-select: none
        }

        .fancybox__container:fullscreen::backdrop {
            opacity: 0
        }

        .fancybox__container:fullscreen .fancybox__button--fullscreen g:first-child {
            display: none
        }

        .fancybox__container:fullscreen .fancybox__button--fullscreen g:nth-child(2) {
            display: block
        }

        #snackbar,
        #thankyou_news_modal,
        .fancybox__button--slideshow g:nth-child(2),
        .fancybox__container.has-slideshow .fancybox__button--slideshow g:first-child {
            display: none
        }

        .fancybox__container.has-slideshow .fancybox__button--slideshow g:nth-child(2),
        .mn-footer .addressbox.ftwebonly,
        .top-infopd>a {
            display: block
        }

        .is-nav-selected .fancybox__thumb {
            border: 2px solid #ed8413
        }

        @media(max-width: 1025px) {
            .collage-images-box {
                width: calc(100vw);
                margin-left: -15px
            }

            .carousel__slide img {
                height: 330px !important
            }

            #thumbCarousel .carousel__slide img {
                width: 100%;
                height: 66px !important;
                object-fit: cover;
                border-radius: 4px
            }

            #thumbCarousel .carousel__slide {
                width: 96px;
                height: 66px
            }

            .carousel__nav,
            .fancybox__nav,
            .with-fancybox .ocd_mobile_banner_cont {
                display: none
            }

            .with-fancybox #main-header {
                margin-top: 0 !important
            }

            .widelftdiv .row .col-md-7 {
                padding: 0
            }

            .carousel .carousel__track iframe {
                height: 100%;
                width: 100%
            }

            #thumbCarousel .is-nav-selected img.panzoom__content {
                filter: brightness(1)
            }

            img.panzoom__content {
                filter: brightness(1)
            }

            .carousel__viewport video {
                width: 100%
            }

            .carousel__track .carousel__slide.is-selected:first-child .btnspec,
            .carousel__track .carousel__slide.is-selected:first-child .galslidlogo {
                opacity: 1 !important;
                transition-property: opacity;
                transition-duration: 0 !important;
                transition-delay: 0 !important
            }

            .carousel__slide.is-selected .btnspec,
            .carousel__slide.is-selected .galslidlogo {
                opacity: 1;
                transition-property: opacity;
                transition-duration: .5s;
                transition-delay: 2.5s
            }

            .carousel__slide .btnspec,
            .carousel__slide .galslidlogo {
                opacity: 0;
                transition-property: opacity;
                transition-duration: 0;
                transition-delay: 0
            }
        }

        .carousel__viewport video {
            min-height: 360px;
            background: #000
        }

        @media(max-width: 1025px) and (min-width:700px) {
            .carousel__viewport video {
                min-height: 429px;
                background: #000;
                width: 100%
            }
        }

        @media(max-width: 1025px) {
            .carousel__viewport video {
                min-height: 250px !important;
                background: #0b0b0b;
                width: 100%
            }

            .collage-images-box,
            .collage-slide {
                height: 330px
            }
        }

        #mainCarousel .carousel__button.is-prev {
            left: .5rem
        }

        #mainCarousel .carousel__button.is-next {
            right: .5rem
        }

        @media(min-width: 1025px) {
            .collage-images-box {
                height: 330px;
                overflow: hidden;
                border-radius: 15px;
                position: relative
            }

            .collage-slide {
                display: grid;
                grid-template-columns: 2fr 2fr 1fr 2fr;
                gap: 10px;
                /* grid-auto-rows: 160px */
            }

            .collage-slide-images {
                display: none
            }

            .collage-slide-images:nth-child(1),
            .collage-slide-images:nth-child(2),
            .collage-slide-images:nth-child(3),
            .collage-slide-images:nth-child(4),
            .collage-slide-images:nth-child(5) {
                display: block
            }

            .collage-slide-images:nth-child(1),
            .collage-slide-images:nth-child(2),
            .collage-slide-images:nth-child(5) {
                grid-column-start: auto;
                grid-row-start: 1;
                grid-row-end: 3
            }

            .collage-slide-images:nth-child(3),
            .collage-slide-images:nth-child(4) {
                row-gap: 10px
            }

            .collage-slide-images:nth-child(3) img,
            .collage-slide-images:nth-child(4) img {
                /* height: 100% !important */
                height: 125px !important
            }

            .collage-slide-images:nth-child(5) {
                grid-column-start: 4
            }

            .collage-slide-small-images {
                height: 450px;
                display: grid;
                gap: 10px;
                grid-template-rows: 1fr 1fr
            }

            .collage-slide-small-images .collage-slide-images img {
                height: -webkit-fill-available !important;
                width: 100% !important
            }

            .collage-slide-images img {
                object-fit: cover;
                width: 100%;
                height: 260px !important;
            }

            .collage-slide-images iframe {
                height: 450px;
                object-fit: cover;
                width: 100%
            }

            .view-all-gallery {
                position: absolute;
                z-index: 9;
                background: #fff;
                padding: 3px 15px;
                right: 20px;
                bottom: 20px;
                cursor: pointer;
                border-radius: 8px
            }

            .view-all-gallery:hover {
                color: #ed8413
            }
        }

        @media(max-width: 768px) {
            .carousel__slide {
                width: 100%;
                padding-left: 0px;
                padding-right: 0px;
            }

            .carousel__slide img {
                border-radius: 8px;
            }

            .last_img .favorite {
                position: absolute;
                top: 25px !important;
                right: 10px;
                z-index: 10;
            }
        }

        @media(min-width: 768px) {
            .border_right_radius {
                border-top-right-radius: 15px;
                border-bottom-right-radius: 15px;
            }

            .border_left_radius {
                border-top-left-radius: 15px;
                border-bottom-left-radius: 15px;
            }

            div#desc_offcanvas {
                min-width: 450px;
            }

            div#see_more_feature {
                min-width: 450px;
            }
        }

        .w_fit {
            width: fit-content;
        }

        .cardetail {
            box-shadow: 0 0 5px #ccc;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        .priceingdt {
            border-bottom: 1px solid #cbcbcb;
        }

        .fespecbox {
            grid-template-columns: 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr;
            display: flex;
            margin-bottom: 1em;
            gap: 24px;
            flex-wrap: wrap;
        }

        .fs-icon .featspecsimg {
            width: 22px;
            height: 22px;
            filter: brightness(.8);
        }

        .fespecbox li span {
            font-size: 12px;
            line-height: 16px;
            text-align: center
        }

        .fespecbox li {
            display: flex;
            align-items: center;
            flex-direction: column;
            height: auto;
            padding: 0;
            border: 0;
            background: no-repeat;
            line-height: 1em;
            margin: 8px 0;
            width: fit-content;
            gap: 10px;
            max-width: 80px;
            min-width: 72px;
            transition: 0.3s;
        }

        .callbox,
        .fespecbox li:hover .fs-icon,
        .mapbox button,
        .sociiconsvg a {
            background: #ed8413;
        }

        .fespecbox li:hover .fs-icon img.featspecsimg {
            filter: brightness(4.5);
        }

        .fespecbox li:hover {
            cursor: pointer;
            color: #ed8413;
        }

        figure.fs-icon {
            padding: 0;
            width: 56px;
            height: 56px;
            background: #f7f7f7;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 50%;
            margin: 0;
            transition: 0.3s;
        }

        .car_color {
            background: #ffffff;
            border: solid 1px #ccc;
            width: 20px;
            height: 20px;
            display: inline-grid;
            border-radius: 3px;
        }

        span.d-block.ms-2 {
            min-width: 50px;
        }

        .detail_col4 {
            /* padding: 20px 0px; */
            background: #fff;
            border: 1px solid #dddddd9c;
            border-radius: 7px;
            margin-top: 30px;
            box-shadow: 0 0 4px #c7c7c7;
        }

        .price_tabs {
            list-style-type: none;
        }

        .price_tabs li {
            list-style-type: none;
        }

        .tab {
            background-color: #f1f1f1;
            display: flex;
        }

        .tab>li button.active {
            background-color: #fff !important;
            color: #4a4b65 !important;
            border-top: 2px solid #ed8413 !important;
            /* border-color: #ed8413 !important; */
        }

        .tab>li {
            background: #f6f5f4;
            float: left;
            border: 0;
            outline: 0;
            cursor: pointer;
            /* padding: 9px 5px; */
            transition: .3s;
            display: inline;
            width: 33%;
            margin-right: .33%;
            text-align: center;
        }

        button.active p {
            color: #EE850B;
        }

        button p {
            color: #000;
        }

        table#open_time {
            font-size: 18px;
        }

        .styled_button.rounded_sm {
            width: 30px;
            height: 30px;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .last_img {
            position: relative;
        }

        .last_img .favorite {
            position: absolute;
            top: 5px;
            right: 10px;
            z-index: 10;
        }

        .favorite2 {
            position: absolute;
            top: 5px;
            left: 10px;
            z-index: 10;
        }

        .small-select {
            font-size: 14px;
            /* Adjust font size */
            padding: 0.25rem 0.5rem;
            /* Adjust padding */
            height: auto;
            /* Adjust height */
            width: 150px;
            /* Adjust width */
        }

        .yellow_btn {
            border-radius: 7px !important;
        }
    </style>

    <div class="content_wrap ">
        <nav>
            <ol class="cd-breadcrumb">
                <li><a href="{{route('home')}}" class="fa fa-home"></a></li>
                <li><a href="#0">{{$details->get_user->city ?? ''}}</a></li>
                <li><a href="{{route('services',['brand' => $details->brand_id])}}">{{$details->get_brand_name->brand_name ??''}}</a></li>
                <li class="current"><span>{{$details->model_name}} {{$details->make_year}}</span></li>
            </ol>
        </nav>
    </div>

    <section>
        @php
            $color_entries = explode(',', $details->exterior_color);

            $first_color_entry = trim($color_entries[0]);

            $first_color_name = explode(':', $first_color_entry)[0];
        @endphp
        <div class="container">
            <h2><span class="fw-bold">{{ $details->get_brand_name->brand_name ?? '' }} {{ $details->model_name ?? '' }}
                    {{ $details->make_year }}</span> Hire In {{ $details->get_user->city ?? '' }}: Efficient
                {{ $details->category }} Car, {{ $details->passengers }} Seats, {{ $first_color_name }},
                Stylish<h2>

                    {{-- border_left_radius first image me lag kar aayga --}}

                    <main class="main my-4">
                        <div class="container">
                            <div class="collage-slide carousel w-10/12 max-w-5xl mx-auto is-draggable">
                                @php
                                    $product_images = json_decode($details->get_images);
                                    $last_image = end($product_images);
                                @endphp

                                @foreach ($product_images as $key => $product_image)
                                    @if (count($product_images) > 1)
                                        <div class="collage-slide-images carousel__slide jsgal d-none d-md-block">
                                            <div class="card-image">
                                                <a href="{{ asset('images/') }}/{{ $product_image->images }}"
                                                    data-fancybox="gallery" data-caption="Caption Images 1">
                                                    @if($key == 0)
                                                    <img class="border_left_radius"
                                                        src="{{ asset('images/') }}/{{ $product_image->images }}"
                                                        alt="Image Gallery">
                                                        @else
                                                        <img class=""
                                                        src="{{ asset('images/') }}/{{ $product_image->images }}"
                                                        alt="Image Gallery">
                                                        @endif
                                                </a>
                                            </div>
                                        </div>
                                    @endif
                                @endforeach

                                <div class="collage-slide-images carousel__slide jsgal last_img">
                                    <div class="card-image">
                                        <div class="favorite2">
                                            @if (!empty($details->is_admin_approve == 1))
                                                <button class="px-2 py-1 rounded fs_13">
                                                    <i class="fa fa-check fs_13"></i> Verified
                                                </button>
                                            @endif
                                            @if ($details->is_featured == 1)
                                                <button class="ms-1 px-2 py-1 rounded fs_13">
                                                    <i class="fa fa-star fs_13 mb-1 text-light"></i> Featured
                                                </button>
                                            @endif
                                            @if ($details->is_featured == 2)
                                                <button class="ms-1 px-2 py-1 rounded bg-dark text-light fs_13">
                                                    <i class="fa fa-star fs_13 mb-1 text-light"></i> Premium
                                                </button>
                                            @endif
                                        </div>
                                        <div class="favorite d-flex">
                                            <button class="styled_button rounded_sm share-button">
                                                <i class="fa-solid fa-share-nodes"></i>
                                            </button>
                                            {{-- <button class="styled_button rounded_sm wishlist-button">
                                                <i class="fa fa-heart"></i>
                                            </button> --}}

                                            @if (Auth::check())
                                                @php
                                                    $wishlistProduct = Auth::user()
                                                        ->wishlist()
                                                        ->where('product_id', $details->id)
                                                        ->first();
                                                @endphp
                                                @if ($wishlistProduct)
                                                    <button class="styled_button rounded_sm wishlist-button"
                                                        data-product-id="{{ $details->id }}">
                                                        <i class="fa fa-heart red_heart"></i>
                                                    </button>
                                                @else
                                                    <button class="styled_button rounded_sm wishlist-button"
                                                        data-product-id="{{ $details->id }}">
                                                        <i class="fa fa-heart"></i>
                                                    </button>
                                                @endif
                                            @else
                                                <button class="styled_button rounded_sm wishlist-button"
                                                    data-product-id="{{ $details->id }}">
                                                    <i class="fa fa-heart"></i>
                                                </button>
                                            @endif
                                        </div>
                                        <a href="{{ asset('images/') }}/{{ $last_image->images }}" data-fancybox="gallery"
                                            data-caption="Caption Images 1">
                                            <img src="{{ asset('images/') }}/{{ $last_image->images }}"
                                                class="border_right_radius" alt="Image Gallery">
                                        </a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </main>


                    <div class="container">
                        <div class="row">
                            <div class="col-md-8">
                                <div>
                                    <h2 class="fw-bold mt-3">Rent {{ $details->get_brand_name->brand_name ?? '' }}
                                        {{ $details->model_name ?? '' }} {{ $details->make_year ?? '' }}</h2>

                                    <div class="d-flex flex-wrap gap-3">
                                        <div class="cardetail px-3 py-1">
                                            <p class="mb-0">{{ $details->category }}</p>
                                        </div>
                                        <div class="cardetail d-flex align-items-center gap-3 px-3 py-1">
                                            <h3 class="mb-0">{{ $details->car_doors ?? '' }}</h3> <img width="15px"
                                                src="{{ asset('icons/door.svg') }}" alt="">
                                        </div>
                                        <div class="cardetail d-flex align-items-center gap-3 px-3 py-1">
                                            <h3 class="mb-0">{{ $details->passengers ?? '' }}</h3> <img width="15px"
                                                src="{{ asset('icons/seaticon.svg') }}" alt="">
                                        </div>
                                        <div class="cardetail d-flex align-items-center gap-3 px-3 py-1">
                                            <h3 class="mb-0">{{ $details->bags ?? '' }}</h3> <img width="15px"
                                                src="{{ asset('icons/brefcase.svg') }}" alt="">
                                        </div>
                                    </div>

                                </div>

                                <hr>

                                <div class="d-flex flex-wrap justify-content-between align-items-center my-4">
                                    <div>
                                        @if (!empty($details->daily_discount_price))
                                            <p class="mb-1">From <del>AED {{ $details->price_per_day }}</del></p>
                                            <h2 class="mb-0 fw-bold">AED {{ $details->daily_discount_price }} / Day</h2>
                                        @else
                                            <h2 class="mb-0 fw-bold">AED {{ $details->price_per_day }} / Day</h2>
                                        @endif
                                    </div>
                                    <div class="mt-4 mt-md-0">
                                        <div class="d-flex flex-wrap align-items-center gap-4">
                                            <p class="mb-1"><i class="fa-solid fa-circle-info"></i>&nbsp; Minimum
                                                {{ $details->days }} days
                                                rental</p>
                                            @if (!empty($details->insurance_per_day))
                                                <p class="mb-1"><i class="fa-solid fa-check"></i>&nbsp; Insurance included
                                                </p>
                                            @endif
                                        </div>
                                    </div>
                                </div>


                                <hr>


                                <div>
                                    <h3 class="fw-bold"><i class="fa-solid fa-file-invoice"></i>&nbsp; Description &
                                        Highlights</h3>

                                    <p>
                                        {!! Str::limit($details->description, 450) !!}

                                        @if(!empty($details->description))
                                        <a data-bs-toggle="offcanvas" href="#desc_offcanvas" role="button"
                                            aria-controls="desc_offcanvas" class="d-block text_theme"
                                            href="javascript:void(0);">Read More</a>
                                            @endif
                                    </p>
                                    {{-- <p>
                                        Rent and drive this Chevrolet Spark 2019-model in Dubai, UAE for AED 60/day & AED
                                        1350/month. Rental cost includes basic comprehensive insurance and standard mileage
                                        limit of 250 km/day (AED 0.3 per additional km applicable). Security deposit of AED
                                        1000 is required by Credit Card, Debit Card or Cash. Contact Al Emad Rent a Car
                                        directly for bookings and inquiries...
                                        <a data-bs-toggle="offcanvas" href="#desc_offcanvas" role="button"
                                            aria-controls="desc_offcanvas" class="d-block text_theme"
                                            href="javascript:void(0);">Read More</a>
                                    </p> --}}


                                </div>

                                <div class="row">
                                    <div class="col-md-6 mt-3">
                                        <div class="priceingdt d-flex justify-content-between py-2">
                                            <p class="mb-0" data-bs-toggle="tooltip" data-bs-placement="top"
                                                data-bs-title="Car Registration Year">Car Registration Year</p>
                                            <p class="mb-0 text-dark" data-bs-toggle="tooltip" data-bs-placement="top"
                                                data-bs-title="{{ $details->make_year }}">{{ $details->make_year }}</p>
                                        </div>
                                    </div>
                                    <div class="col-md-6 mt-3">
                                        <div class="priceingdt d-flex justify-content-between py-2">
                                            <p class="mb-0" data-bs-toggle="tooltip" data-bs-placement="top"
                                                data-bs-title="Gearbox">Gearbox</p>
                                            <p class="mb-0 text-dark" data-bs-toggle="tooltip" data-bs-placement="top"
                                                data-bs-title="{{ $details->transmission }}">{{ $details->transmission }}
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-md-6 mt-3">
                                        <div class="priceingdt d-flex justify-content-between py-2">
                                            <p class="mb-0" data-bs-toggle="tooltip" data-bs-placement="top"
                                                data-bs-title="Salik / Toll Charges">Salik / Toll Charges</p>
                                            <p class="mb-0 text-dark" data-bs-toggle="tooltip" data-bs-placement="top"
                                                data-bs-title="AED 5">AED 5</p>
                                        </div>
                                    </div>
                                </div>


                                <div class="mt-5">

                                    <h3 class="fw-bold">Features & Specs</h3>
                                    <ul class="fespecbox">
                                        <li>
                                            <figure class="fs-icon"> <img class="featspecsimg" loading="lazy"
                                                    width="20" height="20" alt="feature icon"
                                                    src="{{ asset('icons/Bag.svg') }}">
                                            </figure><span> {{ $details->transmission }} Transmission</span>
                                        </li>
                                        <li>
                                            <figure class="fs-icon"> <img class="featspecsimg" loading="lazy"
                                                    width="20" height="20" alt="feature icon"
                                                    src="{{ asset('icons/rent-car.svg') }}">
                                            </figure> <span>{{ $details->category }}</span>
                                        </li>
                                        <li>
                                            <figure class="fs-icon"> <img class="featspecsimg" loading="lazy"
                                                    width="20" height="20" alt="feature icon"
                                                    src="{{ asset('icons/car-doors.svg') }}">
                                            </figure><span> {{ $details->car_doors }} Doors </span>
                                        </li>
                                        <li>
                                            <figure class="fs-icon"> <img class="featspecsimg" loading="lazy"
                                                    width="20" height="20" alt="feature icon"
                                                    src="{{ asset('icons/seat.svg') }}">
                                            </figure> <span>Fits {{ $details->passengers }} Passengers </span>
                                        </li>
                                        <li>
                                            <figure class="fs-icon"> <img class="featspecsimg" loading="lazy"
                                                    width="20" height="20" alt="feature icon"
                                                    src="{{ asset('icons/Bag.svg') }}">
                                            </figure><span> Fits {{ $details->bags }} Bag(s)</span>
                                        </li>
                                        <li>
                                            <figure class="fs-icon"> <img class="featspecsimg" loading="lazy"
                                                    width="20" height="20" alt="feature icon"
                                                    src="{{ asset('icons/gcc-specs.svg') }}">
                                            </figure><span> International Specs: Yes </span>
                                        </li>
                                        <li data-bs-toggle="offcanvas" href="#see_more_feature" role="button"
                                            aria-controls="see_more_feature">
                                            <figure class="fs-icon"><img class="featspecsimg" loading="lazy"
                                                    width="20" height="20" alt="feature icon"
                                                    src="https://www.oneclickdrive.com/application/views/img/three-dots.svg?Lo=7.9">
                                            </figure> <span class="text-orange">See more </span>
                                        </li>
                                    </ul>

                                </div>

                                <section class="py-3">
                                    <div class="content_wrap px-0">
                                        <h2>Frequently Asked Questions</h2>
                                        <div class="collapse_wrap">
                                            <div class="collapse_items">
                                                <div id="faq-one" class="custom_collapse">
                                                    <button onclick="onOpenCollapse('faq-one')">
                                                        <span> Why is driving a BMW recommended in Dubai? </span>
                                                        <i id="faq-one-arrow" class="fa fa-angle-down"></i>
                                                    </button>
                                                    <div id="faq-one-content" class="collapse_content">
                                                        <p>
                                                            Among the popular car choices, BMW is definitely a favorite.
                                                            In Dubai, more so, as itâ€™s perfect for Sheikh Zayed Road as
                                                            well as on the highways stretching across the Emirates. Being
                                                            one of the most scenic places for those seeking a luxurious
                                                            adventure on wheels, BMWs are the most-in-demand cars in
                                                            Dubai. Youâ€™ll be driving alongside exotic cars such as
                                                            Porsche, Mercedes Benz, Audi, not to mention a range of sports
                                                            cars.Many tourists and residents in Dubai rent a BMW to soak
                                                            the pleasure of driving a luxurious sedan. The spacious cabin,
                                                            extra legroom, advanced driving and safety features are what
                                                            BMW vehicles are most known for.
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="collapse_items">
                                                <div id="faq-two" class="custom_collapse">
                                                    <button onclick="onOpenCollapse('faq-two')">
                                                        <span>
                                                            Can I take the BMW rental car to Abu Dhabi from Dubai?
                                                        </span>
                                                        <i id="faq-two-arrow" class="fa fa-angle-down"></i>
                                                    </button>
                                                    <div id="faq-two-content" class="collapse_content">
                                                        <p>
                                                            Yes, you can! Most customers rent a luxury sedan in Dubai to
                                                            visit Abu Dhabi and other emirates. Itâ€™s definitely the best
                                                            way to explore the UAE. Car rental companies allow their
                                                            vehicles to be driven anywhere in the UAE, barring a few
                                                            locations such as Jebel Hafeet, Jebel Jais and desert areas.
                                                            Be sure to plan your drives in advance to make the most of it.
                                                            Google Maps is your best friend!If youâ€™re planning a trip to
                                                            the Grand Mosque, Louvre or Yas Marina, consider renting for 2
                                                            or more days to offset the additional mileage charge you will
                                                            incur. As most car rentals, including luxury and sports cars,
                                                            come with a standard mileage limit of 250-km per day. Dubai to
                                                            Abu Dhabi is a good 150-km away so youâ€™ll probably be clocking
                                                            over 300 km on the journey back.Best practice: Consult with
                                                            the car rental agency regarding your trip plan for
                                                            suggestions. Additional mileage packages may be available.
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="collapse_items">
                                                <div id="faq-three" class="custom_collapse">
                                                    <button onclick="onOpenCollapse('faq-three')">
                                                        <span>
                                                            Which type of BMW cars are available for rent in Dubai?
                                                        </span>
                                                        <i id="faq-three-arrow" class="fa fa-angle-down"></i>
                                                    </button>
                                                    <div id="faq-three-content" class="collapse_content">
                                                        <p>
                                                            WheelsOnClick.com works with several car rental companies
                                                            across the world. In Dubai, we work with quite a few BMW car
                                                            rental providers. You can choose among cars with a range of
                                                            engine sizes and additional features, including GPS
                                                            navigation, safety and performance enhancements. The BMW sedan
                                                            comes in various 4-door sedan, convertible models with
                                                            advanced features. Different models including: BMW 2-series,
                                                            3-series, 550i, 550 mpower, 730li, 750li, X5, X6 and more. If
                                                            youâ€™re looking for a rare BMW car model, contact our suppliers
                                                            who have listed a BMW. They might be able to cater to your
                                                            distinguished needs.
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>


                            </div>
                            <div class="col-md-4">
                                <div class="detail_col4 pt-4">
                                    <a href="{{ route('company-profile', ['slug' => $details->get_user->slug]) }}"><img
                                            width="100px" class="d-block mx-auto"
                                            src="{{ asset('company_logo/' . $details->get_user->company_logo) }}"
                                            alt=""></a>
                                    <p class="text-center fs_13">BOOK DIRECTLY FROM SUPPLIER</p>
                                    <div class="d-flex justify-content-center gap-2 mt-4">
                                        <button class="yellow_btn d-flex my_wp1 phonelead" >
                                            <div class="d-flex align-items-center">
                                                <div>
                                                    <svg class="mr-auto d-block" xmlns="http://www.w3.org/2000/svg"
                                                        viewBox="0 0 512 512" fill="#fff" width="25"
                                                        class="p-2" height="25">
                                                        <path
                                                            d="M511.2 387l-23.25 100.8c-3.266 14.25-15.79 24.22-30.46 24.22C205.2 512 0 306.8 0 54.5c0-14.66 9.969-27.2 24.22-30.45l100.8-23.25C139.7-2.602 154.7 5.018 160.8 18.92l46.52 108.5c5.438 12.78 1.77 27.67-8.98 36.45L144.5 207.1c33.98 69.22 90.26 125.5 159.5 159.5l44.08-53.8c8.688-10.78 23.69-14.51 36.47-8.975l108.5 46.51C506.1 357.2 514.6 372.4 511.2 387z">
                                                        </path>
                                                    </svg>
                                                </div>
                                                <div>
                                                    <span class="d-none numm1 text-light my_wp_num1"
                                                        style="overflow: hidden">
                                                        &nbsp;
                                                        {{$details->get_user->contact}}
                                                    </span>
                                                </div>
                                            </div>
                                        </button>
                                        @php
                                            $currenturl = URL::current();
                                        @endphp
                                        <a id="getValueButton" target="_blank" href="https://api.whatsapp.com/send?text=<?php echo $currenturl; ?>">
                                            <input type="hidden" id="myHiddenInput" value="My Hidden Value">
                                        <i
                                            class="icon fab fa-whatsapp text-light bg_green h5 rounded d-flex align-items-center justify-content-center"></i></a>

                                            @if(!Auth::check())
                                            
                                        <i 
                                        
                                        data-bs-toggle="modal" data-bs-target="#login" role="button" 
                                            aria-controls="mailNote_offcanvas"
                                            class="icon fa-solid fa-envelope text-light bg_grey h5 rounded d-flex align-items-center justify-content-center"></i>
                                            @else
                                            <i 
                                            data-bs-toggle="offcanvas"
                                                href="#mailNote_offcanvas" role="button"
                                                aria-controls="mailNote_offcanvas"
                                                class="icon fa-solid fa-envelope text-light bg_grey h5 rounded d-flex align-items-center justify-content-center"></i>
                                            @endif
                                    </div>

                                    <div>
                                        <ul class="nav nav-tabs price_tabs tab mt-4" id="myTab" role="tablist">
                                            <li class="nav-item" role="presentation">
                                                <button class="nav-link px-0 active w-100" id="home-tab"
                                                    data-bs-toggle="tab" data-bs-target="#home-tab-pane" type="button"
                                                    role="tab" aria-controls="home-tab-pane" aria-selected="true">
                                                    @if (!empty($details->daily_discount_price))
                                                        <p class="mb-1"><del>AED {{ $details->price_per_day }}</del></p>
                                                        <h3 class="mb-1">AED {{ $details->daily_discount_price }}</h3>
                                                        <p class="mb-1">/ day</p>
                                                    @else
                                                        <h3 class="mb-1">AED {{ $details->price_per_day }}</h3>
                                                        <p class="mb-1">/ day</p>
                                                    @endif
                                                </button>
                                            </li>
                                            <li class="nav-item" role="presentation">
                                                <button class="nav-link px-0 w-100" id="profile-tab" data-bs-toggle="tab"
                                                    data-bs-target="#profile-tab-pane" type="button" role="tab"
                                                    aria-controls="profile-tab-pane" aria-selected="false">
                                                    @if (!empty($details->weekly_discount_price))
                                                        <p class="mb-1"><del>AED {{ $details->weekly_rent }}</del></p>
                                                        <h3 class="mb-1">AED {{ $details->weekly_discount_price }}</h3>
                                                        <p class="mb-1">/ day</p>
                                                    @else
                                                        <h3 class="mb-1">AED {{ $details->weekly_rent }}</h3>
                                                        <p class="mb-1">/ week</p>
                                                    @endif
                                                </button>
                                            </li>

                                            @php
                                                $minMileage = null;
                                            @endphp
                                            @foreach ($details->get_mileage as $mileage)
                                                @php
                                                    $mileageValues = [
                                                        $mileage->one_month,
                                                        $mileage->three_months,
                                                        $mileage->six_months,
                                                        $mileage->nine_months,
                                                        $mileage->twelve_months,
                                                    ];
                                                    $nonNullMileageValues = array_filter(
                                                        $mileageValues,
                                                        fn($v) => !is_null($v),
                                                    );

                                                    if (!empty($nonNullMileageValues)) {
                                                        $currentMinMileage = min($nonNullMileageValues);
                                                        if ($minMileage === null || $currentMinMileage < $minMileage) {
                                                            $minMileage = $currentMinMileage;
                                                        }
                                                    }
                                                @endphp
                                            @endforeach

                                            @if (!empty($minMileage))
                                                <li class="nav-item" role="presentation">
                                                    <button class="nav-link px-0 w-100" id="contact-tab"
                                                        data-bs-toggle="tab" data-bs-target="#contact-tab-pane"
                                                        type="button" role="tab" aria-controls="contact-tab-pane"
                                                        aria-selected="false">
                                                        {{-- <p class="mb-1"><del>AED 70</del></p> --}}
                                                        @if ($minMileage !== null)
                                                            <h3 class="mb-1">AED {{ $minMileage }}</h3>
                                                        @endif
                                                        <p class="mb-1">/ Month</p>
                                                    </button>
                                                </li>
                                            @endif
                                        </ul>
                                        <div class="tab-content" id="myTabContent">
                                            <div class="tab-pane fade show active" id="home-tab-pane" role="tabpanel"
                                                aria-labelledby="home-tab" tabindex="0">
                                                <div class="d-flex justify-content-between px-2 py-2 mt-3">
                                                    <p class="mb-1">Included mileage limit</p>
                                                    <p class="text-dark mb-1">{{ $details->per_day_mileage }} km</p>
                                                </div>
                                                <hr class="my-2">
                                                <div class="d-flex justify-content-between px-2 py-2">
                                                    <p class="mb-1">Included mileage limit</p>
                                                    <p class="text-dark mb-1">250 km</p>
                                                </div>
                                                <hr class="mt-2 mb-0">
                                            </div>
                                            <div class="tab-pane fade" id="profile-tab-pane" role="tabpanel"
                                                aria-labelledby="profile-tab" tabindex="0">
                                                <div class="d-flex justify-content-between px-2 py-2 mt-3">
                                                    <p class="mb-1">Included mileage limit</p>
                                                    <p class="text-dark mb-1">{{ $details->weekly_mileage }} km</p>
                                                </div>
                                                <hr class="my-2">
                                                <div class="d-flex justify-content-between px-2 py-2">
                                                    <p class="mb-1">Insurance</p>
                                                    <p class="text-dark mb-1">Basic Comprehensive</p>
                                                </div>
                                                <hr class="mt-2 mb-0">
                                            </div>

                                            @if (!empty($details->get_mileage))
                                                @if (count($details->get_mileage) > 0)
                                                    @php
                                                        // Assuming keys in $details->get_mileage are like 'one_month', 'three_months', etc.
                                                        $mileage_data = $details->get_mileage;

                                                        // Define the months and their IDs (adjusted to match actual keys in $mileage_data)
                                                        $months = [
                                                            'one_month' => ['id' => 1, 'name' => 'One month'],
                                                            'three_months' => ['id' => 2, 'name' => 'Three months'],
                                                            'six_months' => ['id' => 3, 'name' => 'Six months'],
                                                            'nine_months' => ['id' => 4, 'name' => 'Nine months'],
                                                            'twelve_months' => ['id' => 5, 'name' => 'Twelve months'],
                                                        ];

                                                        // Initialize variables
                                                        $non_null_months = 0;
                                                        $non_null_month_data = [];

                                                        // Iterate through each month and check for non-null values
                                                        foreach ($months as $key => $month) {
                                                            // Check if the key exists in $mileage_data and is not null
                                                            if (
                                                                $mileage_data->has($key) &&
                                                                !is_null($mileage_data->{$key})
                                                            ) {
                                                                $non_null_months++;
                                                                $non_null_month_data[] = [
                                                                    'id' => $month['id'],
                                                                    'name' => $month['name'],
                                                                ];
                                                            }
                                                        }
                                                    @endphp
                                                    {{-- {{dd($months)}} --}}

                                                    <div class="tab-pane fade" id="contact-tab-pane" role="tabpanel"
                                                        aria-labelledby="contact-tab" tabindex="0">
                                                        <div class="d-flex justify-content-between px-2 py-2 mt-3">

                                                            <p class="mb-1">Monthly</p>
                                                            <div class="row">
                                                                <div class="col">

                                                                    @php
                                                                        $minMileage = null;
                                                                    @endphp
                                                                    @foreach ($details->get_mileage as $mileage)
                                                                        @php
                                                                            $mileageValues = [
                                                                                $mileage->one_month,
                                                                                $mileage->three_months,
                                                                                $mileage->six_months,
                                                                                $mileage->nine_months,
                                                                                $mileage->twelve_months,
                                                                            ];
                                                                            $nonNullMileageValues = array_filter(
                                                                                $mileageValues,
                                                                                fn($v) => !is_null($v),
                                                                            );

                                                                            if (!empty($nonNullMileageValues)) {
                                                                                $currentMinMileage = min(
                                                                                    $nonNullMileageValues,
                                                                                );
                                                                                if (
                                                                                    $minMileage === null ||
                                                                                    $currentMinMileage < $minMileage
                                                                                ) {
                                                                                    $minMileage = $currentMinMileage;
                                                                                }
                                                                            }
                                                                        @endphp
                                                                    @endforeach



                                                                    @php
                                                                        $nonNullMonths = [];

                                                                        // Loop through each mileage entry and gather non-null months
                                                                        foreach ($details->get_mileage as $mileage) {
                                                                            if (!is_null($mileage->one_month)) {
                                                                                $nonNullMonths['one_month'] = '1 Month';
                                                                            }
                                                                            if (!is_null($mileage->three_months)) {
                                                                                $nonNullMonths['three_months'] =
                                                                                    '3 Months';
                                                                            }
                                                                            if (!is_null($mileage->six_months)) {
                                                                                $nonNullMonths['six_months'] =
                                                                                    '6 Months';
                                                                            }
                                                                            if (!is_null($mileage->nine_months)) {
                                                                                $nonNullMonths['nine_months'] =
                                                                                    '9 Months';
                                                                            }
                                                                            if (!is_null($mileage->twelve_months)) {
                                                                                $nonNullMonths['twelve_months'] =
                                                                                    '12 Months';
                                                                            }
                                                                        }
                                                                    @endphp
                                                                    <select class="form-select-sm" id="get_month">

                                                                        @foreach ($nonNullMonths as $key => $month)
                                                                            {{-- {{   dd($nonNullMonths['id'])}} --}}
                                                                            <option value="{{ $key }}">
                                                                                {{ $month }}</option>
                                                                        @endforeach
                                                                    </select>
                                                                    </select>

                                                                </div>
                                                            </div>

                                                            @php
                                                                $uniqueMileages = [];

                                                                // Loop through each mileage entry and gather non-null months
                                                                foreach ($details->get_mileage as $mileage) {
                                                                    if (
                                                                        !is_null($mileage->one_month) ||
                                                                        !is_null($mileage->three_months) ||
                                                                        !is_null($mileage->six_months) ||
                                                                        !is_null($mileage->nine_months) ||
                                                                        !is_null($mileage->twelve_months)
                                                                    ) {
                                                                        // Use mileage as key to ensure uniqueness
                                                                        $uniqueMileages[$mileage->id] =
                                                                            $mileage->mileage;
                                                                    }
                                                                }
                                                            @endphp

                                                            {{-- <p class="text-dark mb-1">1 {{ $month}}</p> --}}

                                                        </div>
                                                        <hr class="my-2">

                                                        <div class="d-flex justify-content-between align-items-center px-2 py-2">
                                                                        <p class="mb-1">Included mileage limit</p>
                                                                        <div>

                                                                            <select
                                                                            class="form-select form-select-sm mileagesdata"
                                                                            id="mileageslt" style="width: auto;">
                                                                            @foreach ($uniqueMileages as $id => $mileage)
                                                                            <option value="{{ $id }}">
                                                                                {{ $mileage }} km</option>
                                                                                @endforeach
                                                                            </select>
                                                                        </div>

                                                            {{-- <p class="mb-1">Included mileage limit</p> --}}
                                                            {{-- <p class="text-dark mb-1">4500 km</p> --}}

                                                        </div>
                                                        <hr class="my-2">
                                                        <div class="d-flex justify-content-between px-2 py-2">
                                                            <p class="mb-1">Additional mileage charge</p>
                                                            <p class="text-dark mb-1">AED {{$details->monthly_extra}} / km</p>
                                                        </div>
                                                        <hr class="mt-2 mb-0">
                                                    </div>
                                                @endif

                                            @endif
                                        </div>
                                        <p class="bg-secondary py-2 px-2 text-light fs_13 mb-0" data-bs-toggle="offcanvas"
                                            href="#suplierNote_offcanvas" role="button"
                                            aria-controls="suplierNote_offcanvas">Supplier Note: + 5% VAT applicable. 
                                            {{$details->get_user->company_name ?? ''}} ...</p>
                                    </div>
                                </div>


                                <div class="mt-3">
                                    <div class="open_div py-2 px-3 rounded d-flex align-items-center justify-content-between"
                                        onclick="tableShow()">


                                        @php
                                            $currentDay = ucfirst(date('l'));
                                            $currentTime = date('H:i:s');
                                        @endphp


                                        @if (!empty($shop_timings))
                                            @foreach ($shop_timings as $time)
                                                @if ($time['day_of_week'] == $currentDay)
                                                    @if ($time['opening_time'] == $time['closing_time'])
                                                        <div class="d-flex align-items-center">
                                                            <i class="fa-solid fa-clock icon_green"></i>&nbsp;&nbsp; <p
                                                                class="mb-0">
                                                                Open 24 Hours
                                                        </div>
                                                    @endif
                                                @else
                                                    @if ($time['day_of_week'] == $currentDay || $time['closing_time'] == $currentTime)
                                                        <div class="d-flex align-items-center">
                                                            <i class="fa-solid fa-clock icon_green"></i>&nbsp;&nbsp; <p
                                                                class="mb-0">
                                                                {{ date('g:i A', strtotime($time['opening_time'])) }}-
                                                                {{ date('g:i A', strtotime($time['closing_time'])) }}</p>
                                                        </div>
                                                    @endif
                                                @endif
                                            @endforeach
                                        @else
                                            <div class="d-flex align-items-center">
                                                <i class="fa-solid fa-clock icon_green"></i>&nbsp;&nbsp; <p
                                                    class="mb-0">
                                                    Shop Timings not updated
                                            </div>
                                        @endif
                                        <div>
                                            <p class="mb-0">
                                                <i class="fa-solid fa-chevron-right" id="arrow_right"></i>
                                            </p>
                                        </div>
                                    </div>
                                    <table class="table table-striped mt-2 d-none" id="open_time" cellspacing="0">

                                        @php
                                            $currentDay = ucfirst(date('l'));
                                        @endphp
                                        <tbody>
                                            @foreach ($shop_timings as $time)
                                                @if ($time['day_of_week'] == $currentDay)
                                                    <tr style="font-weight:bold;">
                                                        <td>{{ $time['day_of_week'] }}</td>
                                                        <td>
                                                            @if ($time['opening_time'] == $time['closing_time'])
                                                                Open 24 Hours
                                                            @else
                                                                {{ date('g:i A', strtotime($time['opening_time'])) }}
                                                                &mdash;
                                                                {{ date('g:i A', strtotime($time['closing_time'])) }}
                                                            @endif
                                                        </td>
                                                    </tr>
                                                @else
                                                    <tr>
                                                        <td>{{ $time['day_of_week'] }}</td>
                                                        <td>
                                                            @if ($time['opening_time'] == $time['closing_time'])
                                                                Open 24 Hours
                                                            @else
                                                                {{ date('g:i A', strtotime($time['opening_time'])) }}
                                                                &mdash;
                                                                {{ date('g:i A', strtotime($time['closing_time'])) }}
                                                            @endif
                                                        </td>
                                                    </tr>
                                                @endif
                                            @endforeach
                                            {{-- <tr style="font-weight:bold;">
                                                <td>Saturday</td>
                                                <td>9:00am – 9:00pm</td>
                                            </tr> --}}
                                        </tbody>
                                    </table>
                                </div>


                            </div>
                        </div>
                    </div>
        </div>
    </section>




    <section>
        <div class="container">
            <em>
                <b class="clr_danger">Note:</b> The above listings including the
                prices are updated by the respective car rental company. Incase the
                car is not available at the price mentioned (exclusive of VAT), please
                inform us and weâ€™ll get back to you with the best alternative. Happy
                renting!
            </em>
        </div>
    </section>


    {{-- off canvas --}}



    <div class="offcanvas offcanvas-end" tabindex="-1" id="desc_offcanvas" aria-labelledby="offcanvasExampleLabel">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title fw-bold" id="offcanvasExampleLabel">Description</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
            <div>
                {!! $details->description !!}
                <hr>
                {{-- <div class="d-flex flex-wrap justify-content-between">
                    <div>
                        <div>
                            <i class="fa-solid fa-star text_theme"></i>
                            <i class="fa-solid fa-star text_theme"></i>
                            <i class="fa-solid fa-star text_theme"></i>
                            <i class="fa-solid fa-star text_theme"></i>
                            <i class="fa-solid fa-star text_theme"></i>
                            <p class="fs_12 mb-1">
                                Based on 396 reviews
                            </p>
                            <p class="fs_12">
                                for Chevrolet Spark 2019
                            </p>
                        </div>
                    </div>
                    <div>
                        <p class="fs_12">5 of 5 Author Rating</p>
                    </div>
                </div> --}}
                <hr>

            </div>

        </div>
    </div>


    {{-- off canvas features --}}



    <div class="offcanvas offcanvas-end" tabindex="-1" id="see_more_feature" aria-labelledby="offcanvasExampleLabel">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title fw-bold" id="offcanvasExampleLabel">Car Specs</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
            <div>
                <div class="row">
                    <div class="col-md-6 mt-3">
                        <div class="spec_icon">
                            <img width="20px" src="{{ asset('icons/gcc-specs.svg') }}" alt="">&nbsp;
                            {{ $details->transmission }} Transmission
                        </div>
                    </div>
                    <div class="col-md-6 mt-3">
                        <div class="spec_icon">
                            <img width="20px" src="{{ asset('icons/rent-car.svg') }}" alt="">&nbsp;
                            {{ $details->category }}
                        </div>
                    </div>
                    <div class="col-md-6 mt-3">
                        <div class="spec_icon">
                            <img width="20px" src="{{ asset('icons/car-doors.svg') }}" alt="">&nbsp;
                            {{ $details->doors }} Doors
                        </div>
                    </div>
                    <div class="col-md-6 mt-3">
                        <div class="spec_icon">
                            <img width="20px" src="{{ asset('icons/seat.svg') }}" alt="">&nbsp;
                            Fits {{ $details->passengers }} Passengers
                        </div>
                    </div>
                    <div class="col-md-6 mt-3">
                        <div class="spec_icon">
                            <img width="20px" src="{{ asset('icons/Bag.svg') }}" alt="">&nbsp;
                            Fits {{ $details->bags }} Bag(s)
                        </div>
                    </div>
                    <div class="col-md-6 mt-3">
                        <div class="spec_icon">
                            <img width="20px" src="{{ asset('icons/gcc-specs.svg') }}" alt="">&nbsp;
                            International Specs: Yes
                        </div>
                    </div>
                    {{-- <div class="col-md-6 mt-3">
                        <div class="spec_icon">
                            <img width="20px"
                                src="https://www.oneclickdrive.com/application/views/images/feature-icons/settings.svg?Lo=7.9"
                                alt="">&nbsp;
                            1.5L Engine Capacity
                        </div>
                    </div> --}}
                    <div class="col-md-6 mt-3">
                        <div class="spec_icon">
                            <img width="20px" src="{{ asset('icons/fuel-petrol.svg') }}" alt="">&nbsp;
                            {{ $details->fuel_type }} Vehicle
                        </div>
                    </div>
                </div>
                <hr>
                <div>
                    @php
                        $exteriorColors = explode(',', $details->exterior_color);
                    @endphp

                    {{-- @foreach ($exteriorColors as $extcolorData)
                    @php
                        // Split the color data into name and code
                        [$colorName, $colorCode] = explode(':', $extcolorData);
                    @endphp

                    <div class="color_box" style="background-color: {{ $colorCode }}">
                    </div>
                @endforeach --}}
                    <h5 class="fw-bold">Car Color</h5>
                    <div class="d-flex justify-content-between border-bottom mt-3">
                        <p class="mb-1">Exterior</p>
                        <div class="d-flex align-items-center">
                            @foreach ($exteriorColors as $extcolorData)
                                @php
                                    [$colorName, $colorCode] = explode(':', $extcolorData);
                                @endphp
                                <span class="car_color d-block" style="background-color: {{ $colorCode }}"></span>
                                <span class="d-block ms-2">{{ $colorName }}</span>
                            @endforeach
                        </div>
                    </div>
                    <div class="d-flex justify-content-between border-bottom mt-2">
                        <p class="mb-1">Interior</p>
                        <div class="d-flex align-items-center">
                            @php
                                $interiorColors = explode(',', $details->interior_color);
                            @endphp
                            @foreach ($interiorColors as $intcolorData)
                                @php
                                    [$colorName, $colorCode] = explode(':', $intcolorData);
                                @endphp
                                <span class="car_color d-block" style="background-color:{{ $colorCode }}"></span>
                                <span class="d-block ms-2">{{ $colorName }}</span>
                            @endforeach
                        </div>
                    </div>
                </div>

                <div>
                    <h5 class="fw-bold mt-4">Car Features</h5>
                    <div class="row mt-2">
                        @php
                            $carFeatures = explode(',', $details->car_features);
                        @endphp
                        @foreach ($carFeatures as $index => $features)
                            <div class="col-md-6 mt-3">
                                <div class="spec_icon">
                                    @if ($features == '3D Surround Camera')
                                        <img width="20px" src="{{ asset('icons/arrows.svg') }}" alt="">&nbsp;
                                        3D Surround Camera
                                    @endif
                                    @if ($features == 'Memory Front Seats')
                                        <img width="20px" src="{{ asset('icons/save.svg') }}" alt="">&nbsp;
                                        Memory Front Seats
                                    @endif
                                    @if ($features == 'Parking Assist')
                                        <img width="20px" src="{{ asset('icons/plus-square-o.svg') }}"
                                            alt="">&nbsp;
                                        Parking Assist
                                    @endif
                                    @if ($features == 'Temperature Controlled Seats')
                                        <img width="20px" src="{{ asset('icons/cooling-seats.svg') }}"
                                            alt="">&nbsp;
                                        Temperature Controlled Seats
                                    @endif
                                    @if ($features == 'Built-in-GPS')
                                        <img width="20px" src="{{ asset('icons/location-arrow.svg') }}"
                                            alt="">&nbsp;
                                        Built-in-GPS
                                    @endif
                                    @if ($features == 'Parking Sensors')
                                        <img width="20px" src="{{ asset('icons/parking-sensors.svg') }}"
                                            alt="">&nbsp;
                                        Parking Sensors
                                    @endif
                                    @if ($features == 'Steering Assist')
                                        <img width="20px" src="{{ asset('icons/caret-square-o-up.svg') }}"
                                            alt="">&nbsp;
                                        Steering Assist
                                    @endif
                                    @if ($features == 'Day-time Runing Lights')
                                        <img width="20px" src="{{ asset('icons/sun-o.svg') }}" alt="">&nbsp;
                                        Day-time Runing Lights
                                    @endif
                                    @if ($features == 'LCD Screens')
                                        <img width="20px" src="{{ asset('icons/lcd-screens.svg') }}"
                                            alt="">&nbsp;
                                        LCD Screens
                                    @endif
                                    @if ($features == 'SRS Airbags')
                                        <img width="20px" src="{{ asset('icons/srs-airbags.svg') }}"
                                            alt="">&nbsp;
                                        SRS Airbags
                                    @endif
                                    @if ($features == 'Front Air Bags')
                                        <img width="20px" src="{{ asset('icons/air-bags.svg') }}"
                                            alt="">&nbsp;
                                        Front Air Bags
                                    @endif
                                    @if ($features == 'USB')
                                        <img width="20px" src="{{ asset('icons/usb.svg') }}" alt="">&nbsp;
                                        USB
                                    @endif
                                    @if ($features == 'Apple CarPlay')
                                        <img width="20px" src="{{ asset('icons/apple.svg') }}" alt="">&nbsp;
                                        Apple CarPlay
                                    @endif
                                    @if ($features == 'FM-Radio')
                                        <img width="20px" src="{{ asset('icons/podcast.svg') }}"
                                            alt="">&nbsp;
                                        FM-Radio
                                    @endif
                                    @if ($features == 'Power Seats')
                                        <img width="20px" src="{{ asset('icons/power-seats.svg') }}"
                                            alt="">&nbsp;
                                        Power Seats
                                    @endif
                                    @if ($features == 'Power Mirrors')
                                        <img width="20px" src="{{ asset('icons/power-mirrors.svg') }}"
                                            alt="">&nbsp;
                                        Power Mirrors
                                    @endif
                                    @if ($features == 'Touchscreen LCD')
                                        <img width="20px" src="{{ asset('icons/hand-o-up.svg') }}"
                                            alt="">&nbsp;
                                        Touchscreen LCD
                                    @endif
                                    @if ($features == 'Seat Belt Reminder')
                                        <img width="20px" src="{{ asset('icons/warning.svg') }}"
                                            alt="">&nbsp;
                                        Seat Belt Reminder
                                    @endif
                                    @if ($features == 'Power Door Locks')
                                        <img width="20px" src="{{ asset('icons/door-locks.svg') }}"
                                            alt="">&nbsp;
                                        Power Door Locks
                                    @endif
                                    @if ($features == 'Power Windows')
                                        <img width="20px" src="{{ asset('icons/power-windows.svg') }}"
                                            alt="">&nbsp;
                                        Power Windows
                                    @endif
                                    @if ($features == 'Rear AC')
                                        <img width="20px" src="{{ asset('icons/rear-ac.svg') }}"
                                            alt="">&nbsp;
                                        Rear AC
                                    @endif
                                    @if ($features == 'Premium Audio')
                                        <img width="20px" src="{{ asset('icons/bullseye.svg') }}"
                                            alt="">&nbsp;
                                        Premium Audio
                                    @endif
                                    @if ($features == 'Fabric Seats')
                                        <img width="20px" src="{{ asset('icons/fabric-seats.svg') }}"
                                            alt="">&nbsp;
                                        Fabric Seats
                                    @endif
                                    @if ($features == 'Bluetooth')
                                        <img width="20px" src="{{ asset('icons/bluetooth.svg') }}"
                                            alt="">&nbsp;
                                        Bluetooth
                                    @endif
                                    @if ($features == 'Fog-Lights')
                                        <img width="20px" src="{{ asset('icons/fog-lights.svg') }}"
                                            alt="">&nbsp;
                                        Fog-Lights
                                    @endif
                                    @if ($features == 'Adaptive Cruise Control')
                                        <img width="20px" src="{{ asset('icons/lease-find-cars.svg') }}"
                                            alt="">&nbsp;
                                        Adaptive Cruise Control
                                    @endif

                                    @if ($features == 'Massaging Seats')
                                        <img width="20px" src="{{ asset('icons/align-center.svg') }}"
                                            alt="">&nbsp;
                                        Massaging Seats
                                    @endif
                                    @if ($features == 'Sliding Doors')
                                        <img width="20px" src="{{ asset('icons/sliding-doors.svg') }}"
                                            alt="">&nbsp;
                                        Sliding Doors
                                    @endif
                                    @if ($features == 'Foldable Armrest')
                                        <img width="20px" src="{{ asset('icons/columns.svg') }}"
                                            alt="">&nbsp;
                                        Foldable Armrest
                                    @endif
                                    @if ($features == 'Android Auto')
                                        <img width="20px" src="{{ asset('icons/android.svg') }}"
                                            alt="">&nbsp;
                                        Android Auto
                                    @endif
                                    @if ($features == 'Detachable Roof')
                                        <img width="20px" src="{{ asset('icons/ticket.svg') }}" alt="">&nbsp;
                                        Detachable Roof
                                    @endif
                                    @if ($features == 'Butterfly Doors')
                                        <img width="20px" src="{{ asset('icons/butterfly-doors.svg') }}"
                                            alt="">&nbsp;
                                        Butterfly Doors
                                    @endif
                                    @if ($features == 'Stereo MP3 / Cd')
                                        <img width="20px" src="{{ asset('icons/music.svg') }}" alt="">&nbsp;
                                        Stereo MP3 / Cd
                                    @endif
                                    @if ($features == 'Paddle Shift(Triptronic)')
                                        <img width="20px" src="{{ asset('icons/hand-lizard-o.svg') }}"
                                            alt="">&nbsp;
                                        Paddle Shift(Triptronic)
                                    @endif
                                    @if ($features == 'Push Button Ignition')
                                        <img width="20px" src="{{ asset('icons/push-button-start.svg') }}"
                                            alt="">&nbsp;
                                        Push Button Ignition
                                    @endif
                                    @if ($features == 'Powered Tailgate')
                                        <img width="20px" src="{{ asset('icons/toggle-up.svg') }}"
                                            alt="">&nbsp;
                                        Powered Tailgate
                                    @endif
                                    @if ($features == 'Chiller Freezer')
                                        <img width="20px" src="{{ asset('icons/spinner.svg') }}"
                                            alt="">&nbsp;
                                        Chiller Freezer
                                    @endif
                                    @if ($features == 'Air Suspension')
                                        <img width="20px" src="{{ asset('icons/navicon.svg') }}"
                                            alt="">&nbsp;
                                        Air Suspension
                                    @endif
                                    @if ($features == 'Sunroof/Moonroof')
                                        <img width="20px" src="{{ asset('icons/sunroof-car-moon-roof.svg') }}"
                                            alt="">&nbsp;
                                        Sunroof/Moonroof
                                    @endif
                                    @if ($features == 'Reverse Camera')
                                        <img width="20px" src="{{ asset('icons/rear-camera-parking.svg') }}"
                                            alt="">&nbsp;
                                        Reverse Camera
                                    @endif
                                    @if ($features == 'Digital HUD')
                                        <img width="20px" src="{{ asset('icons/digital-display.svg') }}"
                                            alt="">&nbsp;
                                        Digital HUD
                                    @endif
                                    @if ($features == 'Alloy Wheels')
                                        <img width="20px" src="{{ asset('icons/alloy-wheels.svg') }}"
                                            alt="">&nbsp;
                                        Alloy Wheels
                                    @endif
                                    @if ($features == 'Blind Spot Warning')
                                        <img width="20px" src="{{ asset('icons/blind-spot-mirror.svg') }}"
                                            alt="">&nbsp;
                                        Blind Spot Warning
                                    @endif
                                    @if ($features == 'Climate Control')
                                        <img width="20px" src="{{ asset('icons/climate-control.svg') }}"
                                            alt="">&nbsp;
                                        Climate Control
                                    @endif
                                    @if ($features == 'Tail Lift')
                                        <img width="20px" src="{{ asset('icons/toggle-up.svg') }}"
                                            alt="">&nbsp;
                                        Tail Lift
                                    @endif


                                </div>
                            </div>
                        @endforeach

                    </div>

                    <hr>

                    <div class="mt-4">
                        <h5 class="fw-bold">Listed in</h5>
                        <div class="d-flex justify-content-between border-bottom mt-3">
                            <a class="text_theme" href="javascript:void(0);">
                                <p class="mb-1">Compact Car Rentals in Dubai</p>
                            </a>
                            <p class="mb-1"><i class="fa-solid fa-arrow-right text_theme"></i></p>
                        </div>
                        <div class="d-flex justify-content-between border-bottom mt-3">
                            <a class="text_theme" href="javascript:void(0);">
                                <p class="mb-1">Compact Car Rentals in Dubai</p>
                            </a>
                            <p class="mb-1"><i class="fa-solid fa-arrow-right text_theme"></i></p>
                        </div>
                    </div>

                </div>



            </div>

        </div>
    </div>

    {{-- off canvas suplierNote_offcanvas --}}



    <div class="offcanvas offcanvas-end" tabindex="-1" id="mailNote_offcanvas"
        aria-labelledby="offcanvasExampleLabel">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title fw-bold" id="offcanvasExampleLabel">Note</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
            <div>
                <p>The supplier will directly connect with you</p>
            </div>
            <form id="carEnquiry" method="POST">
                @csrf
                <input type="hidden" name="car_id" id="car_id"  value="{{$details->id}}">
                <input type="hidden" name="vendor_id" id="vendor_id" value="{{$details->user_id}}">
            <div>
                <div class="img-cont-drv">
                    <div class="row justcent m-0 m-b-10">
                        <div class="col-md-4 ps-0">
                            <img id="car_image" loading="lazy" class="w-100 rounded"
                                src="{{asset('images')}}/{{$product_images[0]->images}}"
                                alt="Supplier logo" title="Supplier Logo">
                        </div>
                        <div class="col-md-8">
                            <div>
                                <p class="title_car fw-bold mb-1" id="car_title">{{$details->get_brand_name->brand_name ?? ''}} {{$details->model_name}} {{$details->make_year}}</p>
                                <p class="mb-1 title_para" id="min_booking">Minimum {{$details->days}} day booking</p>
                                <p class="mb-1 pb-1 title_para" id="car_company">{{$details->get_user->company_name ?? ''}} Rent A Car</p>
                            </div>
                        </div>
                    </div>
                    <div class="mt-5">
                        <div>
                            <label for="name">Name</label><br>
                            <input class="form-control" name="name" type="text" value="{{Auth::user()->name ?? ''}}" placeholder="{{Auth::user()->name ?? ''}}" id="name" required>
                        </div>
                        <div class="mt-3">
                            <label for="number">Contact Number</label><br>
                            <input class="form-control" type="number" value="{{Auth::user()->contact ?? ''}}" name="contact" placeholder="{{Auth::user()->contact ?? ''}}" id="number" required>
                        </div>
                    </div>
                    <div class="mt-3">
                        <div class="form-check">
                            <input class="form-check-input" name="whatsapp_enabled" type="checkbox" value="1" id="whats_enable">
                            <label class="form-check-label" for="whats_enable">
                                WhatsApp Enabled
                            </label>
                          </div>
                    </div>
                    <div class="mt-3">
                        <div>
                            <label for="email_enq">Email</label><br>
                            <input class="form-control" name="email" value="{{Auth::user()->email ?? '' }}" type="email" placeholder="{{Auth::user()->email ?? ''}}" id="email_enq" required>
                        </div>
                    </div>
                    <div class="mt-3">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="send_suppliers">
                            <label class="form-check-label" for="send_suppliers">
                                Send request to multiple suppliers
                            </label>
                          </div>
                    </div>
                    <button type="submit" class="btn_warning px-3">Send Enquiry</button>
                    <p class="mt-3 enq_para" id="text_para">
                        Your inquiry will be sent to  {{$details->get_user->company_name ?? ''}} Rent A Car without any obligation or cost to you. You agree to be contacted by OneTapDrive and its partners.
                    </p>
                </div>
            </div>
        </form>
        </div>
    </div>


    {{-- off canvas mail_offcanvas --}}



    <div class="offcanvas offcanvas-end" tabindex="-1" id="suplierNote_offcanvas"
        aria-labelledby="offcanvasExampleLabel">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title fw-bold" id="offcanvasExampleLabel">Note</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
            <div>
                <p><span class="text_theme">Supplier Note:</span> {{$details->get_user->company_name ?? ''}}</p>
                <p>
                   {{$details->customer_note}}
                </p>
                <p>
                    <span class="text_theme">OneTapDrive Note:<span> The listing above (including It's pricing, features
                            and other details) is advertised by {{$details->get_user->company_name ?? ''}}. Please get in touch with the supplier
                            directly by contacting on the listed phone number, WhatsApp no. or simply Request a Call to rent
                            this car.
                </p>
                <p>
                    Incase the car is not available at the price mentioned, <span class="text_theme">please report this
                        listing</span>. Happy renting!
                </p>

            </div>

        </div>
    </div>



    <script>
        $(document).ready(function() {
            $("#getValueButton").on("click", function() {
                var companyId = "{{ $details->get_user->id }}";
                var productId = "{{ $details->id }}";
                $.ajax({
                    url: "{{ route('car-leads') }}",
                    type: 'GET',
                    data: {
                        'companyId': companyId,
                        'productId': productId
                    },
                    beforeSend: function() {
                        $("#preloaderSmall").removeClass('loader-active');
                    },
                    success: function(response, data) {
                        $("#preloaderSmall").addClass('loader-active');
                        $.each(response.errors, function(prefix, val) {
                            toastr.error(val[0]);
                        });
                        if (response.status == 503) {
                            toastr.error(response.message)
                            return false;
                        }
                        // if(response.status ==  400){
    
                        // }
                        if (response.status == 502) {
                            toastr.error('Invalid OTP !');
                        }
                        if (response.status == 200) {
                            // $('#registerCompany')[0].reset();
                        }
                    }
                });
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            $('.wishlist-button').on('click', function() {
                var button = $(this);
                var productId = $(this).data('product-id');
                var heartIcon = button.find('.fa-heart');

                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });

                $.ajax({
                    url: '{{ route('wishlist.add') }}',
                    type: 'GET',
                    data: {
                        product_id: productId
                    },
                    success: function(response) {
                        if (response.status == 401) {
                            toastr.error(response.message);
                        }
                        if (response.status != 401) {
                            if (heartIcon.hasClass('fa-heart')) {
                                heartIcon.addClass('red_heart');
                                // heartIcon.removeClass('fa-heart');
                            } else {
                                heartIcon.removeClass('red_heart');
                                heartIcon.addClass('fa-heart'); // Add the 'fa-heart' class
                            }
                        }

                        // Update the heart icon after adding to the wishlist
                        if (response.status == 200) {
                            toastr.success('Product added to wishlist');
                        }
                        if (response.status == 202) {
                            heartIcon.removeClass('red_heart');
                            toastr.success('Product removed from wishlist');
                        }
                    }
                });
            });
        });
    </script>
    <script>
        $('.mileagesdata').on('change', function(e) {
            e.preventDefault();
            var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');

            var mileageId = $("#mileageslt").val();
            console.log(mileageId);
            $.ajax({
                url: "{{ route('get_mileage_price') }}",
                type: 'GET',
                data: {
                    'mileageId': mileageId,
                },
                beforeSend: function() {
                    $("#preloaderSmall").removeClass('loader-active');
                },
                success: function(response) {
                    $('#months').val('');
                    $.each(response.get_months, function(key, value) {
                        console.log(value);
                        if (key !== 'id' && key !== 'product_id' && key !== 'mileage' && key !==
                            'created_at' && key !== 'updated_at') {

                            if (key === 'one_month' && value !== null) {
                                // console.log(key.one_month);
                                $('#months').empty();
                                $("#pricemonth").empty();
                                $('#months').append(
                                    `<option value="${key}">One Month</option>`
                                );
                                $('#pricemonth').append(
                                    `<option value="${key}">${value} AED</option>`
                                )
                            } else if (key === 'three_months' && value !== null) {
                                $('#months').append(
                                    `<option value="${key}">Three Months</option>`
                                );
                                $('#pricemonth').append(
                                    `<option value="${key}">${value} AED</option>`
                                )
                            } else if (key === 'nine_months' && value !== null) {

                                $('#months').append(
                                    `<option value="${key}">Nine Months</option>`
                                );
                                $('#pricemonth').append(
                                    `<option value="${key}">${value} AED</option>`
                                )
                            } else if (key === 'twelve_months' && value !== null) {
                                $('#months').append(
                                    `<option value="${key}">Twelve Months</option>`
                                );
                                $('#pricemonth').append(
                                    `<option value="${key}">${value} AED</option>`
                                )
                            }
                        }
                    });

                }
            });
        })
    </script>


    <script>
        function tableShow() {

            const open_time = document.getElementById('open_time')
            const arrow_right = document.getElementById('arrow_right')
            open_time.classList.toggle('d-none')
            if (open_time.classList.contains('d-none')) {
                arrow_right.style.transform = 'rotate(0deg)';
            } else {
                arrow_right.style.transform = 'rotate(84deg)';
            }

        }


        // Fancybox Config
        $('[data-fancybox="gallery"]').fancybox({
            buttons: [
                "slideShow",
                "thumbs",
                "zoom",
                "fullScreen",
                "share",
                "close"
            ],
            thumbs: {
                autoStart: true // Display thumbnails on open
            },
            loop: false,
            protect: true
        });
    </script>

    <script>
        $(document).ready(function() {
            // Event listener for mileage dropdown
            $('#mileageslt').on('change', function() {
                fetchMileageMonthData();
            });

            // Event listener for month dropdown
            $('#get_month').on('change', function() {
                fetchMileageMonthData();
            });

            function fetchMileageMonthData() {
                var selectedMileageId = $('#mileageslt').val();
                var selectedMonthKey = $('#get_month').val();

                // Ensure both selections are made
                if (selectedMileageId && selectedMonthKey) {
                    // Fetch the data from the server or process it here
                    // Assuming you have an endpoint to fetch data based on mileage ID and month key
                    $.ajax({
                        url: "{{ route('get_mileage_price') }}", // Replace with your endpoint
                        method: 'GET',
                        data: {
                            mileage_id: selectedMileageId,
                            month_key: selectedMonthKey
                        },
                        success: function(response) {
                            // Handle the response and display the data
                            console.log(response);
                            // You can display the data in the desired format
                            // For example:
                            $('#price-display').text(response.price); // Example
                        },
                        error: function(xhr, status, error) {
                            console.error('Error fetching data:', error);
                        }
                    });
                }
            }
        });





        document.addEventListener("DOMContentLoaded", function() {


            const myWpElements1 = document.querySelectorAll(".my_wp1");
            const my_wp_nums1 = document.querySelectorAll(".my_wp_num1");

            myWpElements1.forEach((myWpElement1, index) => {
                myWpElement1.addEventListener("focus", function() {
                    my_wp_nums1[index].classList.remove("d-none");
                    console.log("focus.");
                    myWpElement1.style.width = "170px";
                });

                myWpElement1.addEventListener("blur", function() {
                    my_wp_nums1[index].classList.add("d-none");
                    console.log("blur");
                    myWpElement1.style.width = "47px";
                });
            });
        });
    </script>

<script>
    $("#carEnquiry").validate({
           rules: {
               name: {
                   required: true,
                   maxlength:100
                   
               },
               email: {
                   required: true,
                   maxlength:100
               },
               contact: {
                   required: true
               },               

           },
           messages:{
               name:{
                   required: 'Name field is required'
               },
               email:{
                   required: 'Email field is required'
               },
               contact:{
                   required: 'Contact field is required'
               },
           },

           submitHandler: function(form, e) {
               
                   e.preventDefault();
                   var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
                   var form= $("#carEnquiry");
                   // var name = $("#name").val();
                   $.ajax({
                       type: 'POST',
                       url: "{{route('send-enquiry')}}",
                       data: form.serialize(),
                       dataType: 'JSON',
                       /* remind that 'data' is the response of the AjaxController */
                       success: function (response,data) {
                           if (response.status == 200) {
                               swal({
                               title: "Enquiry!",
                               text: response.message,
                               type: "success",
                               icon: "success",
                           }).then(function() {});
                           $('#carEnquiry')[0].reset();
                           }

                       if(response.status ==  400){
                           $.each(response.errors, function(prefix, val){
                               toastr.error(val[0]);
                           });
                       }
                      
                       }
                   });
               
           }   
       });
   
</script>

<script>
    $('.phonelead').on('click', function(e) {
        e.preventDefault();
        var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
        var dataId = "{{$details->id}}"
        var companyId = "{{$details->user_id}}"
        $.ajax({
            url: "{{ route('call-leads') }}",
            type: 'GET',
            data: {
                'dataId': dataId,
                'companyId': companyId
            },
            beforeSend: function() {
                $("#preloaderSmall").removeClass('loader-active');
            },
            success: function(response, data) {
                $("#preloaderSmall").addClass('loader-active');
                $.each(response.errors, function(prefix, val) {
                    toastr.error(val[0]);
                });
                if (response.status == 503) {
                    toastr.error(response.message)
                    return false;
                }
                // if(response.status ==  400){

                // }
                if (response.status == 502) {
                    toastr.error('Invalid OTP !');
                }
                if (response.status == 200) {
                    // $('#registerCompany')[0].reset();
                }
            }
        });

    })
</script>
@endsection
