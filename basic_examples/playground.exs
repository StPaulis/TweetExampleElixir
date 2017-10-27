defmodule ModulePlayground do
    import IO, only: [puts: 1]
    
    import Kernel, except: [inspect: 1]
    alias ModulePlayground.Misc.Util.Math
    def say_here do
        inspect " Iam Here"
    end

    def inspect(param1) do
        puts "Start"
        puts param1
        puts "End"
    end

    def addSum(a,b) do
        Math.add(a,b)
    end

    def firstElement([_ | tail]),do: hd(tail)

    def findDay(day) do
        cond do
            day == :Monday -> "M"
            day == :Tuesday -> "Tues"
            day == :Wednesday -> "W"
            day == :Thursday -> "Th"
            day == :Friday -> "F"
            day == :Saturday -> "Sat"
            day == :Sunday -> "Sun"
            true -> "Invalid day"
        end       
    end

    def caseDay(day) do
        case day do
            :Monday -> "M"
            :Tuesday -> "Tues"
            :Wednesday -> "W"
            :Thursday -> "Th"
            :Friday -> "F"
            :Saturday -> "Sat"
            :Sunday -> "Sun"
            _ -> "Invalid day"
        end       
    end
end