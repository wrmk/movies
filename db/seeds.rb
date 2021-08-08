# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def create_movie(options = {})
  movie = Movie.create(options)
end

create_movie({
  :title => 'Gisaengchung',
  :text => 'Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.',
  :category => 'comedy'
})

create_movie({
  :title => 'La vita è bella',
  :text => 'When an open-minded Jewish librarian and his son become victims of the Holocaust, he uses a perfect mixture of will, humor, and imagination to protect his son',
  :category => 'comedy'
})

create_movie({
  :title => 'Intouchables',
  :text => 'After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caregiver.',
  :category => 'comedy'
})

create_movie({
  :title => 'Back to the Future',
  :text => 'Marty McFly, a 17-year-old high school student, is accidentally sent thirty years into the past in a time-traveling DeLorean invented by his close friend, the eccentric scientist Doc Brown.',
  :category => 'comedy'
})

create_movie({
  :title => 'Modern Times',
  :text => 'The Tramp struggles to live in modern industrial society with the help of a young homeless woman.',
  :category => 'comedy'
})

create_movie({
  :title => 'Psycho',
  :text => "A Phoenix secretary embezzles $40,000 from her employer's client, goes on the run, and checks into a remote motel run by a young man under the domination of his mother.",
  :category => 'horror'
})

create_movie({
  :title => 'The Shining',
  :text => 'A family heads to an isolated hotel for the winter where a sinister presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future.',
  :category => 'horror'
})

create_movie({
  :title => 'Alien',
  :text => 'After a space merchant vessel receives an unknown transmission as a distress call, one of the crew is attacked by a mysterious life form.',
  :category => 'horror'
})

create_movie({
  :title => 'Tumbbad',
  :text => 'A mythological story about a goddess who created the entire universe. The plot revolves around the consequences when humans build a temple for her first-born.',
  :category => 'horror'
})

create_movie({
  :title => 'The Blue Elephant',
  :text => 'The story of Dr. Yehia, a psychotherapist at Al Abbasia hospital. He works in the department treating the criminally insane, only to find his best friend to be one of the patients',
  :category => 'horror'
})

create_movie({
  :title => 'The Last Letter from Your Lover',
  :text => 'A pair of interwoven stories set in the past and present follow an ambitious journalist determined to solve the mystery of a forbidden love affair at the center of a trove of secret love letters from 1965.',
  :category => 'romance'
})

create_movie({
  :title => 'Chernobyl',
  :text => 'A story about a heroic fireman who worked as one of Chernobyl liquidators.',
  :category => 'romance'
})

create_movie({
  :title => 'Twilight',
  :text => 'When Bella Swan moves to a small town in the Pacific Northwest, she falls in love with Edward Cullen, a mysterious classmate who reveals himself to be a 108-year-old vampire',
  :category => 'romance'
})

create_movie({
  :title => 'Forrest Gump',
  :text => 'The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal and other historical events unfold from the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.',
  :category => 'romance'
})

create_movie({
  :title => '365 dni',
  :text => 'Massimo is a member of the Sicilian Mafia family and Laura is a sales director. She does not expect that on a trip to Sicily trying to save her relationship, Massimo will kidnap her and give her 365 days to fall in love with him.',
  :category => 'romance'
})