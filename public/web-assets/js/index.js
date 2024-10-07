$(function () {
    showDropdown()
    allSlider()
    menuToggler()
})

$(window).on("load", () => {
})

function showDropdown() {
    let buttons = document.querySelectorAll("header.desktopMenu ul.mainMenu >  li > a");

    buttons.forEach((btn) => {
        let dropdownMenu = document.querySelector(`#${btn.dataset.menu}`);

        if (dropdownMenu) {
            // Add hover (mouseenter) event to show the dropdown
            btn.addEventListener("mouseenter", () => {
                dropdownMenu.classList.add('active');
            });

            // Remove hover (mouseleave) event to hide the dropdown
            btn.addEventListener("mouseleave", () => {
                setTimeout(() => {
                    if (!dropdownMenu.matches(':hover')) {
                        dropdownMenu.classList.remove('active');
                    }
                }, 100);
            });

            // Handle mouseenter on dropdown itself to keep it active
            dropdownMenu.addEventListener("mouseenter", () => {
                dropdownMenu.classList.add('active');
            });

            // Remove the active class if the mouse leaves the dropdown menu
            dropdownMenu.addEventListener("mouseleave", () => {
                setTimeout(() => {
                    if (!btn.matches(':hover')) {
                        dropdownMenu.classList.remove('active');
                    }
                }, 100);
            });
        }
    });
}

function allSlider() {
    const brandSwiper = new Swiper(".brandSwiper", {
        slidesPerView: 3,
        loop: true,
        spaceBetween: 20,
        // autoplay: {
        //     delay: 2500
        // },
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        breakpoints: {
            575: {
                slidesPerView: 4.5,
            },
            768: {
                slidesPerView: 5.5,
            },
            1199: {
                centeredSlides: true,
                slidesPerView: 5,
            },
        },
    });
    const carsSwiper = new Swiper(".carsSwiper", {
        slidesPerView: 1.125,
        loop: true,
        spaceBetween: 20,
        // autoplay: {
        //     delay: 2500
        // },
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        breakpoints: {
            575: {
                slidesPerView: 1.5,
            },
            768: {
                slidesPerView: 2.5,
            },
            1199: {
                centeredSlides: true,
                slidesPerView: 4,
            },
        },
    });
    const carFullSwiper = new Swiper(".carFullSwiper", {
        slidesPerView: 1,
        loop: true,
        spaceBetween: 20,
        // autoplay: {
        //     delay: 2500
        // },
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        breakpoints: {
            575: {
                slidesPerView: 1.5,
            },
            768: {
                slidesPerView: 2.5,
            },
            1199: {
                centeredSlides: true,
                slidesPerView: 4,
            },
        },
    });
    const blogSwiper = new Swiper(".blogSwiper", {
        slidesPerView: 1,
        spaceBetween: 0,
        loop: true,
        // autoplay: {
        //     delay: 2500
        // },
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        breakpoints: {
            575: {
                slidesPerView: 2,
                spaceBetween: 20,
            },
            768: {
                slidesPerView: 3,
                spaceBetween: 20,
            },
            991: {
                slidesPerView: 2,
                spaceBetween: 20,
            },
            1199: {
                slidesPerView: 3,
                spaceBetween: 20,
            },
        },
    });
    const testiSwiper = new Swiper(".testiSwiper", {
        slidesPerView: 1,
        loop: true,
        // autoplay: {
        //     delay: 2500
        // },
    });
    const sliderBanner = new Swiper(".sliderBanner", {
        slidesPerView: 1,
        loop: true,
        autoplay: {
            delay: 2500
        },
        parallax: true,
        speed: 1000
    });
}

function menuToggler() {
    let btn = document.querySelector(".mobileMenu #menuToggle")
    let closeBtn = document.querySelector(".mobileMenu .closeBtn")
    let menu = document.querySelector(".mobileMenu .sideMenu")
    let mobileLinks = document.querySelectorAll('.sideMenu ul li a')
    let allSubMenu = document.querySelectorAll('.sideMenu .subMenu')
    let filterBtn = document.getElementById("filterBtn")

    btn.addEventListener('click', () => {
        if (menu.classList.contains('active')) {
            menu.classList.remove('active')
        } else {
            menu.classList.add('active')
        }
    })

    closeBtn.addEventListener('click', () => {
        if (menu.classList.contains('active')) {
            menu.classList.remove('active')
        } else {
            menu.classList.add('active')
        }
    })

    mobileLinks.forEach((link) => {
        link.addEventListener('click', () => {
            document.querySelector(`.mobileMenu #${link.dataset.menu}`).classList.add('active')
        })
    })

    allSubMenu.forEach((menu) => {
        let subMenuCloseBtn = menu.querySelector('.subMenuCloseBtn')
        subMenuCloseBtn.addEventListener('click', () => {
            menu.classList.remove('active')
        })
    })

    filterBtn.addEventListener('click', () => {
        if (document.querySelector('.filterCont').classList.contains('active')) {
            document.querySelector('.filterCont').classList.remove('active')
        } else {
            document.querySelector('.filterCont').classList.add('active')
        }
    })
}

function onOpenCollapse(id) {
    let parentElem = document.getElementById(id);
    let contentHeight = document.getElementById(`${id}-content`).getBoundingClientRect().height;

    if (parentElem.getBoundingClientRect().height > 60) {
        parentElem.style.height = 60 + "px"
        document.getElementById(`${id}-arrow`).style.transform = 'rotate(0deg)'
    } else {
        console.log(parentElem, contentHeight + 60)
        parentElem.style.height = `${contentHeight + 60}px`
        document.getElementById(`${id}-arrow`).style.transform = 'rotate(-180deg)'
    }
}
