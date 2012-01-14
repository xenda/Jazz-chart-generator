module MusicChartGenerator

  class Display
    
    def initialize(chords_per_line_nb=4)
      @chords_per_line_nb = chords_per_line_nb
    end

    def render(chart)
      longest_chord_size = chart.chords.map(&:size).max

      chart.chords.each_slice(@chords_per_line_nb) do |chords|
        chords_line = chords.map do |chord|
          chord + " " * (longest_chord_size - chord.size)
        end.join " "

        puts chords_line + "\n"
      end
    end
    
  end

end
