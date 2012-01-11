# Jazz chart generator

From an existing jazz chart this command line utility semi-randomly generates 
a new "similar" jazz chart. 

For that it builds a representation of the initial chart in form of a 
[Markov chain](http://en.wikipedia.org/wiki/Markov_chain) where the chords are 
the states of the chain.

The generated chart is similar to the initial chart in the sense that
the chord transitions are generated by randomly picking among the existing 
chord transitions of the initial chart, the more a chord transition occurs in
the initial chart, the more chances it has to be picked when generating the 
new chart. More precisely, it uses a second-order Markov chain by considering 
the transitions from two consecutive chords to the next one. Thus it generates 
more "phrasal" structures than a first-order approach.

This code is written during the 
[Mendicant University](http://mendicantuniversity.org/) 
course of January 2012.

## Usage

It requires Ruby 1.9+.

`./generate_chart.rb chart_file first_chord second_chord`

The chart file must be a text file where the chord names are simply separated 
by one or more spaces. See in the `charts` directory a few examples.

The first and second chords you choose to start your new chart must be appear 
consecutively in the initial chart.

Example: `./generate_chart.rb charts/what-a-wonderful-world.chart A- G-7`

## Running specs

`ruby spec/*`

## License

Released under the MIT license.
