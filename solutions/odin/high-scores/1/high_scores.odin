package high_scores

import "core:slice"

// Complete the HighScores data structure.
High_Scores :: struct {
	scores: []int
}

new_scores :: proc(initial_values: []int) -> High_Scores {
	return High_Scores{ scores = initial_values }
}

destroy_scores :: proc(s: ^High_Scores) {
	
}

scores :: proc(s: High_Scores) -> []int {
	return s.scores
}

latest :: proc(s: High_Scores) -> int {
	if (len(s.scores) == 0) {
		return 0
	} else {
		return s.scores[len(s.scores)-1]
	}
}

personal_best :: proc(s: High_Scores) -> int {
	best := s.scores[0]
	for i in 1..<len(s.scores) {
		if s.scores[i] > best {
			best = s.scores[i]
		}
	}
	return best
}

personal_top_three :: proc(s: High_Scores) -> []int {
	init : []int
	if len(s.scores) > 2 {
		init = s.scores[0:3]
	} else if len(s.scores) > 1 {
		init = s.scores[0:2]
	} else if len(s.scores) > 0 {
		init = s.scores[0:1]
	} else {
		init = {}
	}
	best := slice.clone(init)
	slice.sort(best)
	for i in 3..<len(s.scores) {
		if s.scores[i] > best[0] {
			best[0] = s.scores[i]
			slice.sort(best)
		}
	}
	slice.reverse_sort(best)
	return best
}
