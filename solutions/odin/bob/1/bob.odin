package bob

import "core:strings"
import "core:fmt"

response :: proc(input: string) -> string {
	actual := strings.trim_space(input)
    isQuestion := strings.ends_with(actual, "?")
    isText := strings.contains_any(actual, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")
    isYell     := strings.to_upper(actual) == actual
    isEmpty    := len(actual) == 0

    switch {
    case isEmpty:
        return "Fine. Be that way!"
    case isText && isYell && isQuestion:
        return "Calm down, I know what I'm doing!"
    case isYell && isText:
        return "Whoa, chill out!"
    case isQuestion:
        return "Sure."
    case: // This is the "default" case
        return "Whatever."
    }
}
