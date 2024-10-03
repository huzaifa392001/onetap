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
    const testiSwiper = new Swiper(".testiSwiper", {
        slidesPerView: 1,
        loop: true,
        // autoplay: {
        //     delay: 2500
        // },
    });
}

function menuToggler() {
    let btn = document.querySelector(".mobileMenu #menuToggle")
    let closeBtn = document.querySelector(".mobileMenu .closeBtn")
    let menu = document.querySelector(".mobileMenu .sideMenu")
    let mobileLinks = document.querySelectorAll('.sideMenu ul li a')
    let allSubMenu = document.querySelectorAll('.sideMenu .subMenu')

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
}
