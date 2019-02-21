def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year 
  FROM books 
  WHERE series_id = 1 
  ORDER BY books.year "
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto 
  FROM characters 
  ORDER BY LENGTH(motto) DESC 
  LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species)
  FROM characters
  GROUP by species 
  ORDER BY COUNT(species) DESC
  LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "Select authors.name, subgenres.name
  FROM authors 
  JOIN series 
  ON series.author_id = authors.id 
  JOIN subgenres 
  ON series.subgenre_id = subgenres.id"
  # FROM series
  # LEFT OUTER JOIN subgenres
  # ON subgenres.id=series.subgenre_id
  # LEFT OUTER JOIN authors
  # ON authors.id=serie.author_id
end

def select_series_title_with_most_human_characters
  
  "SELECT series.title 
  FROM series
  LEFT OUTER JOIN characters
  ON characters.series_id=series.id
  WHERE characters.species='human' 
  GROUP BY series.title
  GROUP BY COUNT(characters.species='human') DESC 
  LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  # "SELECT series.title 
  # FROM series
  # LEFT OUTER JOIN characters
  # ON characters.series_id=series.id
  # WHERE characters.species='human' "
end
