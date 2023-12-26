import multiprocessing

glob = 1

def plus(x: int) -> int:
    return glob + x

def main() -> int:
    global glob
    glob = 2

    # this modify the global variable in 4 different child processes
    # this should print out [3, 4, 5, 6]
    # in 'fork', all the child process will share/inherit
    # the same global variable
    print("----- fork -----")
    with multiprocessing.get_context('fork').Pool(4) as p:
        print(list(p.map(plus, [1, 2, 3, 4])))

    # in 'spawn', everything starts from the scratch
    # so the global variable will be 1
    # the 'glob = 2' doesn't modify the global variable
    print("----- spawn -----")
    with multiprocessing.get_context('spawn').Pool(4) as p:
        print(list(p.map(plus, [1, 2, 3, 4])))

    return 0

if __name__ == '__main__':
    raise SystemExit(main())
