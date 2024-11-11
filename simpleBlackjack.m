function avgScore = simpleBlackjack(limit, trials)
% This function simulates playing Simplified Blackjack
% INPUT: 
%   limit - The player always hits if their hand value is less than limit
%   trials - The number of hands to simulate
% OUTPUT:
%   avgScore - The average final score of all hands

% Possible card values 
cards = [2 3 4 5 6 7 8 9 10 10 10 10];

 % Initial total score over all trials
 totalScore = 0;

 % Simulate "trials" hands
 for t = 1:trials
      handTotal = 0;  % Start each hand with a total of 0

      % Simulate a single hand
       while handTotal < limit
           % Draw a card by randomly selecting from "cards"
            card = cards(randi(length(cards)));
            handTotal = handTotal + card;

            % Stop drawing if the total exceeds 21
            if handTotal > 21
                break;
            end
       end

        % Add the final hand total to the total score
        totalScore = totalScore + handTotal;
 end
  % Compute the average score
   avgScore = totalScore / trials;
end


