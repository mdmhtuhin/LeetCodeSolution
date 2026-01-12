# Time: 1232 ms (100%), Space: 224.1 MB (100%)


# @param {Integer} k
# @param {Integer} w
# @param {Integer[]} profits
# @param {Integer[]} capital
# @return {Integer}

class MinHeap
    def initialize(&comparator)
        @heap = []
        @comparator = comparator || Proc.new { |x, y| x < y }
    end

    def push(x)
        @heap << x
        heapify_up(@heap.length - 1)
    end

    def pop
        swap(0, @heap.length - 1)
        min = @heap.pop
        heapify_down(0)
        min
    end

    def empty?
        @heap.empty?
    end

    private

    def heapify_up(i)
        parent = (i - 1) / 2
        while i > 0 && @comparator.call(@heap[i], @heap[parent])
            swap(i, parent)
            i = parent
            parent = (i - 1) / 2
        end
    end

    def heapify_down(i)
        left_child = 2 * i + 1
        right_child = 2 * i + 2
        smallest = i
        if left_child < @heap.length && @comparator.call(@heap[left_child], @heap[smallest])
            smallest = left_child
        end
        if right_child < @heap.length && @comparator.call(@heap[right_child], @heap[smallest])
            smallest = right_child
        end
        if smallest != i
            swap(i, smallest)
            heapify_down(smallest)
        end
    end

    def swap(i, j)
        temp = @heap[i]
        @heap[i] = @heap[j]
        @heap[j] = temp
    end
end

def find_maximized_capital(k, w, profits, capital)
    projects = capital.zip(profits).sort
    available_projects = MinHeap.new { |x, y| x > y }
    i = 0
    k.times do
        while i < projects.length && projects[i][0] <= w
            available_projects.push(projects[i][1])
            i += 1
        end
        if !available_projects.empty?
            w += available_projects.pop
        else
            break
        end
    end
    w
end





