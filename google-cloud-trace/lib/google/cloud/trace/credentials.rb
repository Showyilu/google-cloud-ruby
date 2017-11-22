# Copyright 2014 Google Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


require "googleauth"

module Google
  module Cloud
    module Trace
      ##
      # # Credentials
      #
      # Represents the authentication and authorization used to connect to the
      # Stackdriver Trace API.
      #
      # @example
      #   require "google/cloud/trace"
      #
      #   keyfile = "/path/to/keyfile.json"
      #   creds = Google::Cloud::Trace::Credentials.new keyfile
      #
      #   trace = Google::Cloud::Trace.new(
      #     project_id: "my-project",
      #     credentials: creds
      #   )
      #
      #   trace.project_id #=> "my-project"
      #
      class Credentials < Google::Auth::Credentials
        SCOPE = ["https://www.googleapis.com/auth/cloud-platform"]
        PATH_ENV_VARS = %w(TRACE_CREDENTIALS
                           TRACE_KEYFILE
                           GOOGLE_CLOUD_CREDENTIALS
                           GOOGLE_CLOUD_KEYFILE
                           GCLOUD_KEYFILE)
        JSON_ENV_VARS = %w(TRACE_CREDENTIALS_JSON
                           TRACE_KEYFILE_JSON
                           GOOGLE_CLOUD_CREDENTIALS_JSON
                           GOOGLE_CLOUD_KEYFILE_JSON
                           GCLOUD_KEYFILE_JSON)
        DEFAULT_PATHS = \
          ["~/.config/gcloud/application_default_credentials.json"]
      end
    end
  end
end