//! A structured JSON API for Herdr Voice Bridge.
#![doc = include_str!("../README.md")]

#[cfg(unix)]
mod client;
#[cfg(unix)]
mod endpoint;
#[cfg(unix)]
mod error;
#[cfg(unix)]
mod list;
#[cfg(unix)]
mod ops;
#[cfg(unix)]
mod request;
#[cfg(unix)]
mod response;
#[cfg(all(test, unix))]
mod tests;

#[cfg(unix)]
pub use error::{Error, Result};

#[cfg(unix)]
fn main() -> std::process::ExitCode {
    use std::io::Write;

    let response = request::run();
    match response::write(&response) {
        Ok(()) => std::process::ExitCode::SUCCESS,
        Err(error) => {
            let _ = writeln!(std::io::stderr(), "herdr-voice-api: {error}");
            std::process::ExitCode::FAILURE
        }
    }
}

#[cfg(not(unix))]
fn main() -> std::process::ExitCode {
    use std::io::Write;

    let _ = writeln!(std::io::stderr(), "herdr-voice-api は Unix でのみ利用できます");
    std::process::ExitCode::from(2)
}
