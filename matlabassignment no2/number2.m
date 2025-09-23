% Defining struct
Members = struct('Name', {}, 'HomeDistrict', {}, 'Age', {}, 'Course', {}, ...
    'Village', {}, 'Tribe', {}, 'Religion', {}, 'Interest', {}, 'FacialRepresentation', {});

% Member1
Members(1).Name = 'KemigisaTasha';
Members(1).HomeDistrict = 'Kampala';
Members(1).Age = 19;
Members(1).Course = 'AMI';
Members(1).Village = 'Kololo';
Members(1).Tribe = 'Mutooro';
Members(1).Religion = 'Christian';
Members(1).Interest = 'shopping';
Members(1).FacialRepresentation = imread('ngc6543a.jpg');

% Member2
Members(2).Name = 'AyebarePrudence';
Members(2).HomeDistrict = 'Mbarara';
Members(2).Age = 22;
Members(2).Course = 'WAR';
Members(2).Village = 'Mbarara';
Members(2).Tribe = 'Munyankore';
Members(2).Religion = 'Christian';
Members(2).Interest = 'Eating';
Members(2).FacialRepresentation = imread('ngc6543a.jpg');

% Member3
Members(3).Name = 'Kenyimoses';
Members(3).HomeDistrict = 'Jinja';
Members(3).Age = 21;
Members(3).Course = 'MEB';
Members(3).Village = 'buwenda';
Members(3).Tribe = 'kuku';
Members(3).Religion = 'Christian';
Members(3).Interest = 'swimming';
Members(3).FacialRepresentation = imread('ngc6543a.jpg');

% Member4
Members(4).Name = 'zzimbeenock';
Members(4).HomeDistrict = 'zana';
Members(4).Age = 21;
Members(4).Course = 'WAR';
Members(4).Village = 'masaka';
Members(4).Tribe = 'muganda';
Members(4).Religion = 'Christian';
Members(4).Interest = 'rapping';
Members(4).FacialRepresentation = imread('ngc6543a.jpg');

% Member5
Members(5).Name = 'oketchsimon';
Members(5).HomeDistrict = 'Jinja';
Members(5).Age = 22;
Members(5).Course = 'AMI';
Members(5).Village = 'kigaya';
Members(5).Tribe = 'musoga';
Members(5).Religion = 'Christian';
Members(5).Interest = 'football';
Members(5).FacialRepresentation = imread('ngc6543a.jpg');

% Member6
Members(6).Name = 'NakyagabaBabra';
Members(6).HomeDistrict = 'Busia';
Members(6).Age = 23;
Members(6).Course = 'ape';
Members(6).Village = 'buhayenji';
Members(6).Tribe = 'samia';
Members(6).Religion = 'Christian';
Members(6).Interest = 'watching';
Members(6).FacialRepresentation = imread('ngc6543a.jpg');

% Member7
Members(7).Name = 'PearlFlavia';
Members(7).HomeDistrict = 'Kazo';
Members(7).Age = 22;
Members(7).Course = 'WAR';
Members(7).Village = 'kashwa';
Members(7).Tribe = 'munyankole';
Members(7).Religion = 'Christian';
Members(7).Interest = 'playingvolleyball';
Members(7).FacialRepresentation = imread('ngc6543a.jpg');

% Member8
Members(8).Name = 'KagoyaAnnLauriene';
Members(8).HomeDistrict = 'Iganga';
Members(8).Age = 21;
Members(8).Course = 'PTI';
Members(8).Village = 'Iganga';
Members(8).Tribe = 'Musoga';
Members(8).Religion = 'Christian';
Members(8).Interest = 'WatchingMovies';
Members(8).FacialRepresentation = imread('ngc6543a.jpg');

% Member9
Members(9).Name = 'OyugiAndrewLinus';
Members(9).HomeDistrict = 'Kaberamaido';
Members(9).Age = 23;
Members(9).Course = 'WAR';
Members(9).Village = 'Okile';
Members(9).Tribe = 'Kumam';
Members(9).Religion = 'Christian';
Members(9).Interest = 'WatchingMovies';
Members(9).FacialRepresentation = imread('ngc6543a.jpg');

% Member10
Members(10).Name = 'OmaliEmmanuel';
Members(10).HomeDistrict = 'Tororo';
Members(10).Age = 23;
Members(10).Course = 'WAR';
Members(10).Village = 'Mukuju';
Members(10).Tribe = 'Itesot';
Members(10).Religion = 'Catholic';
Members(10).Interest = 'Football';
Members(10).FacialRepresentation = imread('ngc6543a.jpg');

% Histogram of ages
age = [Members.Age];
histogram(age);
xlabel('Age');
ylabel('Count');
title('Age Distribution of Members');
saveas(gcf, 'Histogram of ages.png')

% Interest Comparison
interests = {Members.Interest}; uniqueInterests = unique(interests); counts = zeros(size(uniqueInterests));
for i = 1:length(uniqueInterests); counts(i) = sum(strcmp(interests, uniqueInterests{i})); end
figure; bar(counts); xticklabels(uniqueInterests); xlabel('Interest'); ylabel('Count'); title('Interests');
saveas(gcf, 'Interest comparison bar graph.png')

%Tribe Distribution
tribes = {Members.Tribe}; uniqueTribes = unique(tribes); counts = zeros(size(uniqueTribes));
for i = 1:length(uniqueTribes); counts(i) = sum(strcmp(tribes, uniqueTribes{i})); end
figure; pie(counts, uniqueTribes); title('Tribe Distribution');
saveas(gcf, 'Tribe Distriction pie chart.png')

% Religion Distribution
religions = {Members.Religion}; uniqueReligions = unique(religions); counts = zeros(size(uniqueReligions));
for i = 1:length(uniqueReligions); counts(i) = sum(strcmp(religions, uniqueReligions{i})); end
figure; bar(counts); xticklabels(uniqueReligions); xlabel('Religion'); ylabel('Count'); title('Religion Distribution');
saveas(gcf, 'Religion distribution_bar_graph.png')

% Tribe vs Interest
uniqueTribes = unique(tribes); uniqueInterests = unique(interests); data = zeros(length(uniqueTribes), length(uniqueInterests));
for i = 1:length(Members); tribeIdx = find(strcmp(uniqueTribes, Members(i).Tribe)); interestIdx = find(strcmp(uniqueInterests, Members(i).Interest)); data(tribeIdx, interestIdx) = data(tribeIdx, interestIdx) + 1; end
figure; bar3(data); xlabel('Interests'); ylabel('Tribes'); zlabel('Count'); xticklabels(uniqueInterests); yticklabels(uniqueTribes); title('Tribe vs Interest');
saveas(gcf, 'Tribe vs Interest_bar_graph.png')

% District vs Age
figure;
boxplot([Members.Age]), categorical({Members.HomeDistrict});
xlabel('District');
ylabel('Age');
title('District vs Age');
saveas(gcf, 'District vs Age box plot.png')

% Tribe vs Religion
uniqueTribes = unique(tribes); uniqueReligions = unique(religions); data = zeros(length(uniqueTribes), length(uniqueReligions));
for i = 1:length(Members); tribeIdx = find(strcmp(uniqueTribes, Members(i).Tribe)); religionIdx = find(strcmp(uniqueReligions, Members(i).Religion)); data(tribeIdx, religionIdx) = data(tribeIdx, religionIdx) + 1; end
figure; bar3(data); xlabel('Religions'); ylabel('Tribes'); zlabel('Count'); xticklabels(uniqueReligions); yticklabels(uniqueTribes); title('Tribe vs Religion');
saveas(gcf, 'Tribe vs Religion_bar_graph.png')

% Basic statistics on age
meanTime = mean(age);
medianTime = median(age);
maxTime = max(age);
minTime = min(age);
stdTime = std(age);

% Display the results
fprintf('\n--- age Statistics ---\n');
fprintf('Mean: %.2f years\n', meanTime);
fprintf('Median: %.2f years\n', medianTime);
fprintf('Max: %.2f years\n', maxTime);
fprintf('Min: %.2f years\n', minTime);
fprintf('Standard Deviation: %.2f\n', stdTime);
saveas(gcf, 'Names_age_bar_graph.png')