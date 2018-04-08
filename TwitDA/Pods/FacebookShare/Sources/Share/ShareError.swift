// Copyright (c) 2016-present, Facebook, Inc. All rights reserved.
//
// You are hereby granted a non-exclusive, worldwide, royalty-free license to use,
// copy, modify, and distribute this software in source code or binary form for use
// in connection with the web services and APIs provided by Facebook.
//
// As with any software that integrates with the Facebook platform, your use of
// this software is subject to the Facebook Developer Principles and Policies
// [http://developers.facebook.com/policy/]. This copyright notice shall be
// included in all copies or substantial portions of the software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
// FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
// COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
// IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
// CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

import FBSDKShareKit

/**
 Represents an error returned by the FacebookShare framework.
 */
public enum ShareError: Error {

  /// Reserved.
  case reserved

  /// The error code for errors from uploading open graph objects.
  case openGraph

  /**
   The error code for when a sharing dialog is not available.
   Use the `validate()` function on the dialog/sharer to check for this case before calling `show()`.
   */
  case dialogNotAvailable

  /// The error code for unknown errors.
  case unknown

  /**
   Attempt to create a share error from a NSError returned by the Facebook SDK.

   - parameter error: The error to attempt to convert.
   */
  internal init?(error: NSError) {
    if error.domain != FBSDKShareErrorDomain {
      return nil
    }

    switch FBSDKShareErrorCode(rawValue: error.code) {
    case .reservedErrorCode?: self = .reserved
    case .openGraphErrorCode?: self = .openGraph
    case .dialogNotAvailableErrorCode?: self = .dialogNotAvailable
    case .unknownErrorCode?: self = .unknown
    default: return nil
    }
  }
}
