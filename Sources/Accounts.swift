import Foundation

public struct Accounts {
    /// Fetches an account.
    ///
    /// - Parameter id: The account id.
    /// - Returns: Resource for `Account?`.
    public static func account(id: Int) -> AccountResource {
        return AccountResource(path: "/api/v1/accounts/\(id)", parse: AccountResource.parser)
    }

    /// Gets the current user.
    ///
    /// - Returns: Resource for `Account?`.
    public static func currentUser() -> AccountResource {
        return AccountResource(path: "/api/v1/accounts/verify_credentials", parse: AccountResource.parser)
    }

    /// Gets an account's followers.
    ///
    /// - Parameter id: The account id.
    /// - Returns: Resource for `[Account]`.
    public static func followers(id: Int) -> AccountsResource {
        return AccountsResource(path: "/api/v1/accounts/\(id)/followers", parse: AccountsResource.parser)
    }

    /// Gets who account is following.
    ///
    /// - Parameter id: The account id.
    /// - Returns: Resource for `[Account]`.
    public static func following(id: Int) -> AccountsResource {
        return AccountsResource(path: "/api/v1/accounts/\(id)/following", parse: AccountsResource.parser)
    }

    /// Gets an account's statuses.
    ///
    /// - Parameter id: The account id.
    /// - Returns: Resource for `[Status]`.
    public static func statuses(id: Int) -> TimelineResource {
        return TimelineResource(path: "/api/v1/accounts/\(id)/statuses", parse: TimelineResource.parser)
    }

    /// Follows an account.
    ///
    /// - Parameter id: The account id.
    /// - Returns: Resource for `Account?`.
    public static func follow(id: Int) -> AccountResource {
        return AccountResource(path: "/api/v1/accounts/\(id)/follow", parse: AccountResource.parser)
    }

    /// Unfollow an account.
    ///
    /// - Parameter id: The account id.
    /// - Returns: Resource for `Account?`.
    public static func unfollow(id: Int) -> AccountResource {
        return AccountResource(path: "/api/v1/accounts/\(id)/unfollow", parse: AccountResource.parser)
    }

    /// Blocks an account.
    ///
    /// - Parameter id: The account id.
    /// - Returns: Resource for `Account?`.
    public static func block(id: Int) -> AccountResource {
        return AccountResource(path: "/api/v1/accounts/\(id)/block", parse: AccountResource.parser)
    }

    /// Unblocks an account.
    ///
    /// - Parameter id: The account id.
    /// - Returns: Resource for `Account?`.
    public static func unblock(id: Int) -> AccountResource {
        return AccountResource(path: "/api/v1/accounts/\(id)/unblock", parse: AccountResource.parser)
    }

    /// Mutes an account.
    ///
    /// - Parameter id: The account id.
    /// - Returns: Resource for `Account?`.
    public static func mute(id: Int) -> AccountResource {
        return AccountResource(path: "/api/v1/accounts/\(id)/mute", parse: AccountResource.parser)
    }

    /// Unmutes an account.
    ///
    /// - Parameter id: The account id.
    /// - Returns: Resource for `Account?`.
    public static func unmute(id: Int) -> AccountResource {
        return AccountResource(path: "/api/v1/accounts/\(id)/unmute", parse: AccountResource.parser)
    }

    /// Searches for accounts.
    ///
    /// - Parameters:
    ///   - query: What to search for.
    ///   - limit: Maximum number of matching accounts to return (default: 40).
    /// - Returns: Resource for `[Account]`.
    public static func search(query: String, limit: Int = 40) -> AccountsResource {
        let parameters = [URLQueryItem(name: "q", value: query), URLQueryItem(name: "limit", value: String(limit))]
        return AccountsResource(path: "/api/v1/accounts/search", parameters: parameters, parse: AccountsResource.parser)
    }
}