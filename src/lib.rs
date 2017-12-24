#![feature(lang_items)]

#![no_std]

// TODO: move to a separate file, organise and provide correct implementation
mod lang_items {

    #[lang = "eh_personality"]
    extern "C" fn eh_personality() {}

    #[lang = "panic_fmt"]
    fn panic_fmt() -> ! {
        loop {}
    }
}
