import Foundation

public struct FollowRequests {
    /// Fetches a list of follow requests.
    ///
    /// - Returns: Resource for `[Account]`.
    public static func all() -> AccountsResource {
        return AccountsResource(path: "/api/v1/follow_requests", parse: AccountsResource.parser)
    }
}