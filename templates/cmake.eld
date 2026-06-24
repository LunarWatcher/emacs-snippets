cmake-mode

;; TODO: one day, I would like these to point to codeberg, but codeberg is currently too unstable
;; to deal with that
;; (not because this causes lots of traffic, but traffic is flaky, so some of my builds fail because codeberg is
;; struggling)
;; These are also unauthed requests, and unauthed requests are thrown under the bus for stability - which is good, to be
;; clear, because it keeps codeberg usable for the people who rely on it, but not so good for trying to make codeberg my
;; actual main code forge
(fc-stc "FetchContent_Declare(stc
    GIT_REPOSITORY https://github.com/LunarWatcher/stc
)
FetchContent_MakeAvailable(stc)")
(fc-minilog "FetchContent_Declare(minilog
    GIT_REPOSITORY https://github.com/LunarWatcher/minilog
)
FetchContent_MakeAvailable(minilog)")
(fc-cli11 "FetchContent_Declare(cli11
    GIT_REPOSITORY https://github.com/LunarWatcher/CLI11
    GIT_TAG main
)
FetchContent_MakeAvailable(cli11)")

(fc-catch2 "include(FetchContent)
FetchContent_Declare(
  Catch2
  GIT_REPOSITORY https://github.com/catchorg/Catch2.git
  GIT_TAG v3.15.1
)

FetchContent_MakeAvailable(Catch2)
target_link_libraries(tests Catch2::Catch2)")
