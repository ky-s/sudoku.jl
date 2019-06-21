horizontalcheck(grid) = all(i -> allunique(grid[:, i]), 1:9)
verticalcheck(grid)   = all(i -> allunique(grid[i, :]), 1:9)
subgridcheck(grid)    = [allunique(grid[h,v]) for v in [1:3, 4:6, 7:9] for h in [1:3, 4:6, 7:9]] |> all

function isvalid(grid)
    horizontalcheck(grid) && verticalcheck(grid) && subgridcheck(grid)
end

function make()
    # TODO: make
    # while true
    #     grid = rand(1:9, 9, 9)
    #     isvalid(grid) && return grid
    # end
end
