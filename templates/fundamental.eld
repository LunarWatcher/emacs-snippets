fundamental-mode


;; Datetime
(iso (format-time-string "%Y-%m-%dT%H:%M:%S%:z"))

(clang-tidy-template "Checks: >
  bugprone-*,
  clang-*,
  misc-*,
  performance-*,
  portability-*,
  modernize-deprecated-headers,
  modernize-use-constexpr,
  modernize-use-string-view,
  optin.taint.*,
  -bugprone-easily-swappable-parameters,
  -bugprone-exception-escape,
  -bugprone-macro-parentheses,
  -bugprone-narrowing-conversions,
  -clang-analyzer-optin.core.EnumCastOutOfRange,
  -clang-diagnostic-unused-parameter,
  -clang-diagnostic-unused-private-field,
  -misc-non-private-*,
  -misc-const-correctness,
  -misc-include-cleaner,
  -misc-no-recursion,
  -misc-use-anonymous-namespace,
  -performance-avoid-endl,
  -performance-enum-size,
  -readability-*,
  -portability-avoid-pragma-once,
  -portability-template-virtual-member-function

HeaderFilterRegex: \".*\\/src\\/" (p "Header filter component") "\\/.*\"
")
