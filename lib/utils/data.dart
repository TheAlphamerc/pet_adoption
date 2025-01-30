import 'package:pet_adoption/models/pet_model.dart';

class Data {
  static String getPicture(Species type, int id) {
    Map<Species, List<String>> pictures = {
      Species.DOG: [
        'https://images.pexels.com/photos/5255248/pexels-photo-5255248.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2',
        'https://images.pexels.com/photos/3523317/pexels-photo-3523317.jpeg?auto=compress&cs=tinysrgb&h=250&dpr=2',
        'https://images.pexels.com/photos/30401419/pexels-photo-30401419/free-photo-of-adorable-boston-terrier-in-pink-jacket-outdoors.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2'
            'https://images.pexels.com/photos/25752626/pexels-photo-25752626/free-photo-of-head-of-dog-in-snow.jpeg?auto=compress&cs=tinysrgb&w=1260&h=320&dpr=2'
      ],
      Species.CAT: [
        'https://images.pexels.com/photos/289381/pexels-photo-289381.jpeg?auto=compress&cs=tinysrgb&w=320&dpr=2',
        'https://images.pexels.com/photos/460797/pexels-photo-460797.jpeg?auto=compress&cs=tinysrgb&w=320&dpr=2',
        'https://images.pexels.com/photos/1275461/pexels-photo-1275461.jpeg?auto=compress&cs=tinysrgb&w=320&dpr=2',
        'https://images.pexels.com/photos/208967/pexels-photo-208967.jpeg?auto=compress&cs=tinysrgb&w=320&dpr=2'
      ],
      Species.RABBIT: [
        'https://images.pexels.com/photos/20178218/pexels-photo-20178218/free-photo-of-pet-rabbit-on-black-background.jpeg?auto=compress&cs=tinysrgb&w=320&dpr=2',
        'https://images.pexels.com/photos/20033030/pexels-photo-20033030/free-photo-of-cute-gray-rabbit-in-grass.jpeg?auto=compress&cs=tinysrgb&w=320&dpr=2',
        'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=320&dpr=2',
        'https://images.pexels.com/photos/30422374/pexels-photo-30422374/free-photo-of-adorable-rabbit-in-natural-habitat.jpeg?auto=compress&cs=tinysrgb&h=320'
      ]
    };

    return pictures[type]![id % pictures[type]!.length];
  }

  static PetResponse getPets() {
    return PetResponse.fromJson({
      "Pets": [
        {
          "id": 1,
          "type": "DOG",
          "breeds": "Golden Retriever",
          "age": 8,
          "gender": "MALE",
          "size": "LARGE",
          "name": "Buddy",
          "description":
              "Buddy is a very friendly dog. He loves to play fetch and enjoys long walks in the park. His playful nature and gentle demeanor make him a perfect companion for families and individuals alike. He is always eager to please and is known for his loyalty.",
          "weight": 10,
          "isFavorite": false,
          "price": 100,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/5255248/pexels-photo-5255248.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "2 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": true,
            "isVaccinated": true
          }
        },
        {
          "id": 2,
          "type": "CAT",
          "breeds": "Siamese",
          "age": 5,
          "gender": "FEMALE",
          "size": "SMALL",
          "name": "Mittens",
          "description":
              "Mittens is a very friendly cat. She enjoys lounging in sunny spots and playing with her favorite toys. Her affectionate nature makes her a great companion, and she loves to curl up on your lap while you read or watch TV. Mittens is also quite vocal and will chat with you throughout the day.",
          "weight": 5,
          "isFavorite": false,
          "price": 50,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/3523317/pexels-photo-3523317.jpeg?auto=compress&cs=tinysrgb&h=250&dpr=2",
          "distance": "5 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": true,
            "isVaccinated": true
          }
        },
        {
          "id": 3,
          "type": "RABBIT",
          "breeds": "Holland Lop",
          "age": 24,
          "gender": "FEMALE",
          "size": "SMALL",
          "name": "Bugs",
          "description":
              "Bugs is a playful young rabbit who loves to hop around and explore her surroundings. She enjoys fresh vegetables and will happily munch on her favorites while you watch. Bugs is also very curious and loves to interact with people, making her a delightful pet for families.",
          "weight": 5,
          "isFavorite": false,
          "price": 75,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/30401419/pexels-photo-30401419/free-photo-of-adorable-boston-terrier-in-pink-jacket-outdoors.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "10 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": true,
            "isVaccinated": true
          }
        },
        {
          "id": 4,
          "type": "DOG",
          "breeds": "Beagle",
          "age": 7,
          "gender": "FEMALE",
          "size": "MEDIUM",
          "name": "Daisy",
          "description":
              "Daisy is an energetic Beagle who loves to sniff around and explore the great outdoors. With her keen sense of smell and playful spirit, she enjoys going on adventures and discovering new scents. Daisy is also very affectionate and loves to cuddle after a long day of play.",
          "weight": 20,
          "isFavorite": false,
          "price": 150,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "3 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": true,
            "isVaccinated": true
          }
        },
        {
          "id": 5,
          "type": "CAT",
          "breeds": "Persian",
          "age": 8,
          "gender": "MALE",
          "size": "SMALL",
          "name": "Whiskers",
          "description":
              "Whiskers is an adorable Persian kitten with fluffy fur and a playful personality. He loves to chase after feather toys and enjoys climbing to high places to survey his kingdom. Whiskers is also very affectionate and will purr contentedly when you pet him, making him a perfect lap cat.",
          "weight": 4,
          "isFavorite": false,
          "price": 80,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "4 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": false,
            "isVaccinated": true
          }
        },
        {
          "id": 6,
          "type": "RABBIT",
          "breeds": "Netherland Dwarf",
          "age": 14,
          "gender": "MALE",
          "size": "SMALL",
          "name": "Thumper",
          "description":
              "Thumper is a young Netherland Dwarf rabbit who is full of energy and curiosity. He loves to hop around and explore his environment, often getting into playful mischief. Thumper enjoys being held and will nuzzle against you for attention, making him a delightful companion for anyone.",
          "weight": 3,
          "isFavorite": false,
          "price": 70,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "6 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": false,
            "isVaccinated": true
          }
        },
        {
          "id": 7,
          "type": "DOG",
          "breeds": "Bulldog",
          "age": 14,
          "gender": "MALE",
          "size": "MEDIUM",
          "name": "Max",
          "description":
              "Max is a lovable Bulldog with a gentle disposition. He enjoys lounging around the house and is known for his calm demeanor. Max loves to go for short walks and is very friendly with children and other pets. His affectionate nature makes him a great family pet.",
          "weight": 50,
          "isFavorite": false,
          "price": 200,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "7 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": true,
            "isVaccinated": true
          }
        },
        {
          "id": 8,
          "type": "CAT",
          "breeds": "Maine Coon",
          "age": 18,
          "gender": "FEMALE",
          "size": "LARGE",
          "name": "Luna",
          "description":
              "Luna is a majestic Maine Coon cat with a fluffy coat and a gentle personality. She enjoys lounging in sunny spots and watching the world go by. Luna is very social and loves to interact with her human companions, often following them around the house. Her playful antics will keep you entertained.",
          "weight": 15,
          "isFavorite": false,
          "price": 120,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "8 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": true,
            "isVaccinated": true
          }
        },
        {
          "id": 9,
          "type": "RABBIT",
          "breeds": "Mini Rex",
          "age": 13,
          "gender": "FEMALE",
          "size": "SMALL",
          "name": "Coco",
          "description":
              "Coco is a charming Mini Rex rabbit with a soft, velvety coat. She loves to hop around and explore her surroundings, often stopping to nibble on her favorite greens. Coco is very friendly and enjoys being petted, making her a wonderful companion for children and adults alike.",
          "weight": 4,
          "isFavorite": false,
          "price": 65,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "9 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": false,
            "isVaccinated": true
          }
        },
        {
          "id": 10,
          "type": "DOG",
          "breeds": "Poodle",
          "age": 10,
          "gender": "FEMALE",
          "size": "MEDIUM",
          "name": "Bella",
          "description":
              "Bella is a sophisticated Poodle with a playful spirit. She enjoys agility training and loves to show off her skills. Bella is very intelligent and eager to learn new tricks, making her a joy to train. Her friendly nature and love for people make her an ideal family pet.",
          "weight": 30,
          "isFavorite": false,
          "price": 250,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "4 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": true,
            "isVaccinated": true
          }
        },
        {
          "id": 11,
          "type": "CAT",
          "breeds": "Bengal",
          "age": 5,
          "gender": "MALE",
          "size": "SMALL",
          "name": "Leo",
          "description":
              "Leo is a playful Bengal kitten with a striking coat and a curious personality. He loves to explore every nook and cranny of his environment and is always on the lookout for new adventures. Leo enjoys interactive playtime and will keep you entertained with his antics.",
          "weight": 6,
          "isFavorite": false,
          "price": 90,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "5 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": false,
            "isVaccinated": true
          }
        },
        {
          "id": 12,
          "type": "RABBIT",
          "breeds": "English Angora",
          "age": 14,
          "gender": "FEMALE",
          "size": "SMALL",
          "name": "Fluffy",
          "description":
              "Fluffy is a young English Angora rabbit with a luxurious coat that requires regular grooming. She loves to hop around and explore her surroundings, often stopping to nibble on her favorite treats. Fluffy is very friendly and enjoys being held, making her a delightful companion.",
          "weight": 5,
          "isFavorite": false,
          "price": 85,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "6 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": false,
            "isVaccinated": true
          }
        },
        {
          "id": 13,
          "type": "DOG",
          "breeds": "Cocker Spaniel",
          "age": 14,
          "gender": "MALE",
          "size": "MEDIUM",
          "name": "Charlie",
          "description":
              "Charlie is a cheerful Cocker Spaniel who loves to play and be around people. He enjoys long walks and is always excited to meet new friends. Charlie is very affectionate and will shower you with love and attention, making him a wonderful addition to any family.",
          "weight": 25,
          "isFavorite": false,
          "price": 180,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "3 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": true,
            "isVaccinated": true
          }
        },
        {
          "id": 14,
          "type": "CAT",
          "breeds": "Scottish Fold",
          "age": 6,
          "gender": "FEMALE",
          "size": "SMALL",
          "name": "Mia",
          "description":
              "Mia is an adorable Scottish Fold kitten with unique folded ears and a playful spirit. She loves to chase after toys and will entertain you with her playful antics. Mia is very affectionate and enjoys snuggling up next to you, making her a perfect lap cat.",
          "weight": 4,
          "isFavorite": false,
          "price": 95,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "4 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": false,
            "isVaccinated": true
          }
        },
        {
          "id": 15,
          "type": "RABBIT",
          "breeds": "Holland Lop",
          "age": 12,
          "gender": "MALE",
          "size": "SMALL",
          "name": "Binky",
          "description":
              "Binky is a young Holland Lop rabbit who loves to hop around and explore. He has a playful personality and enjoys interacting with people. Binky is very curious and will often investigate new toys and treats, making him a delightful companion for families.",
          "weight": 4,
          "isFavorite": false,
          "price": 75,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "5 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": false,
            "isVaccinated": true
          }
        },
        {
          "id": 16,
          "type": "DOG",
          "breeds": "Shih Tzu",
          "age": 19,
          "gender": "FEMALE",
          "size": "SMALL",
          "name": "Sophie",
          "description":
              "Sophie is a charming Shih Tzu with a sweet disposition. She loves to be pampered and enjoys being carried around. Sophie is very friendly and gets along well with children and other pets. Her playful nature and affectionate personality make her a wonderful companion.",
          "weight": 12,
          "isFavorite": false,
          "price": 160,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "2 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": true,
            "isVaccinated": true
          }
        },
        {
          "id": 17,
          "type": "CAT",
          "breeds": "Ragdoll",
          "age": 10,
          "gender": "MALE",
          "size": "LARGE",
          "name": "Oliver",
          "description":
              "Oliver is a gentle Ragdoll cat with striking blue eyes and a soft, fluffy coat. He enjoys lounging around the house and is known for his calm demeanor. Oliver loves to be petted and will often roll over for belly rubs, making him a perfect companion for anyone seeking a loving pet.",
          "weight": 15,
          "isFavorite": false,
          "price": 150,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "6 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": true,
            "isVaccinated": true
          }
        },
        {
          "id": 18,
          "type": "RABBIT",
          "breeds": "Lionhead",
          "age": 11,
          "gender": "FEMALE",
          "size": "SMALL",
          "name": "Nibbles",
          "description":
              "Nibbles is a young Lionhead rabbit with a fluffy mane and a playful personality. She loves to hop around and explore her surroundings, often stopping to nibble on her favorite treats. Nibbles is very friendly and enjoys being held, making her a delightful companion for families.",
          "weight": 3,
          "isFavorite": false,
          "price": 80,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "7 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": false,
            "isVaccinated": true
          }
        },
        {
          "id": 19,
          "type": "DOG",
          "breeds": "Boxer",
          "age": 16,
          "gender": "MALE",
          "size": "LARGE",
          "name": "Rocky",
          "description":
              "Rocky is a strong and playful Boxer who loves to run and play fetch. He is very energetic and enjoys outdoor activities, making him a great companion for active families. Rocky is also very loyal and protective, ensuring that his loved ones are always safe.",
          "weight": 60,
          "isFavorite": false,
          "price": 220,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "5 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": true,
            "isVaccinated": true
          }
        },
        {
          "id": 20,
          "type": "CAT",
          "breeds": "Sphynx",
          "age": 9,
          "gender": "FEMALE",
          "size": "SMALL",
          "name": "Cleo",
          "description":
              "Cleo is a unique Sphynx kitten with a playful personality and a love for cuddling. Despite her lack of fur, she has a warm and affectionate nature. Cleo enjoys playing with her toys and will often curl up next to you for warmth and companionship, making her a delightful pet.",
          "weight": 5,
          "isFavorite": false,
          "price": 200,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "3 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": false,
            "isVaccinated": true
          }
        },
        {
          "id": 21,
          "type": "RABBIT",
          "breeds": "Dutch",
          "age": 15,
          "gender": "MALE",
          "size": "SMALL",
          "name": "Buster",
          "description":
              "Buster is a young Dutch rabbit with a friendly disposition and a love for adventure. He enjoys exploring his surroundings and is always curious about new things. Buster is very social and loves to interact with people, making him a great companion for families and children.",
          "weight": 4,
          "isFavorite": false,
          "price": 70,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "4 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": false,
            "isVaccinated": true
          }
        },
        {
          "id": 22,
          "type": "DOG",
          "breeds": "Chihuahua",
          "age": 7,
          "gender": "FEMALE",
          "size": "SMALL",
          "name": "Chica",
          "description":
              "Chica is a tiny Chihuahua with a big personality. She loves to be the center of attention and enjoys being carried around. Chica is very affectionate and will follow you everywhere, making her a loyal companion. Her playful nature and love for cuddles make her a perfect pet for anyone.",
          "weight": 6,
          "isFavorite": false,
          "price": 120,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "2 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": true,
            "isVaccinated": true
          }
        },
        {
          "id": 23,
          "type": "CAT",
          "breeds": "British Shorthair",
          "age": 18,
          "gender": "MALE",
          "size": "MEDIUM",
          "name": "Gizmo",
          "description":
              "Gizmo is a charming British Shorthair cat with a plush coat and a calm demeanor. He enjoys lounging around the house and is known for his gentle nature. Gizmo loves to be petted and will often curl up next to you for warmth and companionship, making him a perfect lap cat.",
          "weight": 12,
          "isFavorite": false,
          "price": 140,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "5 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": true,
            "isVaccinated": true
          }
        },
        {
          "id": 24,
          "type": "RABBIT",
          "breeds": "Himalayan",
          "age": 11,
          "gender": "FEMALE",
          "size": "SMALL",
          "name": "Snowball",
          "description":
              "Snowball is a young Himalayan rabbit with a beautiful coat and a gentle personality. She loves to hop around and explore her surroundings, often stopping to nibble on her favorite treats. Snowball is very friendly and enjoys being held, making her a delightful companion for families.",
          "weight": 4,
          "isFavorite": false,
          "price": 75,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "6 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": false,
            "isVaccinated": true
          }
        },
        {
          "id": 25,
          "type": "DOG",
          "breeds": "Dachshund",
          "age": 16,
          "gender": "MALE",
          "size": "SMALL",
          "name": "Oscar",
          "description":
              "Oscar is a playful Dachshund with a curious nature. He loves to dig and explore his surroundings, often getting into playful mischief. Oscar is very friendly and enjoys being around people, making him a great companion for families and children.",
          "weight": 12,
          "isFavorite": false,
          "price": 130,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "3 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": true,
            "isVaccinated": true
          }
        },
        {
          "id": 26,
          "type": "CAT",
          "breeds": "Norwegian Forest",
          "age": 4,
          "gender": "FEMALE",
          "size": "MEDIUM",
          "name": "Sasha",
          "description":
              "Sasha is a playful Norwegian Forest kitten with a fluffy coat and a curious personality. She loves to climb and explore her environment, often getting into playful mischief. Sasha is very affectionate and enjoys snuggling up next to you, making her a perfect lap cat.",
          "weight": 8,
          "isFavorite": false,
          "price": 110,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "4 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": false,
            "isVaccinated": true
          }
        },
        {
          "id": 27,
          "type": "RABBIT",
          "breeds": "American Fuzzy Lop",
          "age": 11,
          "gender": "MALE",
          "size": "SMALL",
          "name": "BunBun",
          "description":
              "BunBun is a young American Fuzzy Lop rabbit with a soft, fluffy coat. He loves to hop around and explore his surroundings, often stopping to nibble on his favorite treats. BunBun is very friendly and enjoys being held, making him a delightful companion for families.",
          "weight": 4,
          "isFavorite": false,
          "price": 80,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "5 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": false,
            "isVaccinated": true
          }
        },
        {
          "id": 28,
          "type": "DOG",
          "breeds": "Great Dane",
          "age": 10,
          "gender": "MALE",
          "size": "LARGE",
          "name": "Zeus",
          "description":
              "Zeus is a gentle giant of a Great Dane who loves to lounge around and be pampered. Despite his large size, he has a calm and friendly demeanor. Zeus enjoys going for walks and is very gentle with children, making him a wonderful family pet.",
          "weight": 120,
          "isFavorite": false,
          "price": 300,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "8 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": true,
            "isVaccinated": true
          }
        },
        {
          "id": 29,
          "type": "CAT",
          "breeds": "Abyssinian",
          "age": 4,
          "gender": "FEMALE",
          "size": "SMALL",
          "name": "Zara",
          "description":
              "Zara is a playful Abyssinian kitten with a unique coat pattern and a curious personality. She loves to explore her surroundings and is always on the lookout for new adventures. Zara enjoys interactive playtime and will keep you entertained with her playful antics.",
          "weight": 5,
          "isFavorite": false,
          "price": 95,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "3 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": false,
            "isVaccinated": true
          }
        },
        {
          "id": 30,
          "type": "RABBIT",
          "breeds": "Californian",
          "age": 16,
          "gender": "MALE",
          "size": "SMALL",
          "name": "Hopper",
          "description":
              "Hopper is a young Californian rabbit with a friendly disposition and a love for adventure. He enjoys exploring his surroundings and is always curious about new things. Hopper is very social and loves to interact with people, making him a great companion for families and children.",
          "weight": 5,
          "isFavorite": false,
          "price": 70,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "4 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": false,
            "isVaccinated": true
          }
        },
        {
          "id": 31,
          "type": "DOG",
          "breeds": "Yorkshire Terrier",
          "age": 11,
          "gender": "FEMALE",
          "size": "SMALL",
          "name": "Tina",
          "description":
              "Tina is a spunky Yorkshire Terrier with a big personality. She loves to be the center of attention and enjoys being pampered. Tina is very affectionate and will follow you everywhere, making her a loyal companion. Her playful nature and love for cuddles make her a perfect pet for anyone.",
          "weight": 7,
          "isFavorite": false,
          "price": 150,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "2 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": true,
            "isVaccinated": true
          }
        },
        {
          "id": 32,
          "type": "CAT",
          "breeds": "Siamese",
          "age": 6,
          "gender": "MALE",
          "size": "SMALL",
          "name": "Simba",
          "description":
              "Simba is a regal Siamese cat with striking blue eyes and a playful spirit. He loves to explore his surroundings and is always on the lookout for new adventures. Simba enjoys interactive playtime and will keep you entertained with his playful antics, making him a delightful companion.",
          "weight": 8,
          "isFavorite": false,
          "price": 120,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "5 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": false,
            "isVaccinated": true
          }
        },
        {
          "id": 33,
          "type": "RABBIT",
          "breeds": "New Zealand",
          "age": 16,
          "gender": "FEMALE",
          "size": "SMALL",
          "name": "Bunny",
          "description":
              "Bunny is a young New Zealand rabbit with a friendly disposition and a love for adventure. She enjoys exploring her surroundings and is always curious about new things. Bunny is very social and loves to interact with people, making her a great companion for families and children.",
          "weight": 5,
          "isFavorite": false,
          "price": 75,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "4 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": false,
            "isVaccinated": true
          }
        },
        {
          "id": 34,
          "type": "DOG",
          "breeds": "Pug",
          "age": 22,
          "gender": "MALE",
          "size": "SMALL",
          "name": "Pippin",
          "description":
              "Pippin is a charming Pug with a playful personality and a love for cuddles. He enjoys being around people and is known for his affectionate nature. Pippin loves to play with his toys and will often entertain you with his silly antics, making him a delightful companion.",
          "weight": 18,
          "isFavorite": false,
          "price": 140,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "3 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": true,
            "isVaccinated": true
          }
        },
        {
          "id": 35,
          "type": "CAT",
          "breeds": "Russian Blue",
          "age": 4,
          "gender": "FEMALE",
          "size": "SMALL",
          "name": "Nina",
          "description":
              "Nina is a beautiful Russian Blue kitten with a soft, plush coat and striking green eyes. She loves to play and explore her surroundings, often getting into playful mischief. Nina is very affectionate and enjoys snuggling up next to you, making her a perfect lap cat.",
          "weight": 6,
          "isFavorite": false,
          "price": 110,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "4 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": false,
            "isVaccinated": true
          }
        },
        {
          "id": 36,
          "type": "RABBIT",
          "breeds": "Flemish Giant",
          "age": 12,
          "gender": "MALE",
          "size": "LARGE",
          "name": "Goliath",
          "description":
              "Goliath is a young Flemish Giant rabbit who is already showing signs of becoming a gentle giant. He loves to hop around and explore his surroundings, often stopping to nibble on his favorite treats. Goliath is very friendly and enjoys being held, making him a delightful companion for families.",
          "weight": 10,
          "isFavorite": false,
          "price": 90,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "5 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": false,
            "isVaccinated": true
          }
        },
        {
          "id": 37,
          "type": "DOG",
          "breeds": "Rottweiler",
          "age": 24,
          "gender": "FEMALE",
          "size": "LARGE",
          "name": "Roxy",
          "description":
              "Roxy is a strong and loyal Rottweiler who loves to protect her family. She is very affectionate and enjoys spending time with her loved ones. Roxy is also very intelligent and eager to learn, making her a great companion for active families who enjoy training their pets.",
          "weight": 80,
          "isFavorite": false,
          "price": 250,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "6 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": true,
            "isVaccinated": true
          }
        },
        {
          "id": 38,
          "type": "CAT",
          "breeds": "Burmese",
          "age": 12,
          "gender": "MALE",
          "size": "MEDIUM",
          "name": "Milo",
          "description":
              "Milo is a charming Burmese cat with a sleek coat and a playful personality. He loves to explore his surroundings and is always on the lookout for new adventures. Milo enjoys interactive playtime and will keep you entertained with his playful antics, making him a delightful companion.",
          "weight": 10,
          "isFavorite": false,
          "price": 130,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "5 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": true,
            "isVaccinated": true
          }
        },
        {
          "id": 39,
          "type": "RABBIT",
          "breeds": "English Spot",
          "age": 12,
          "gender": "FEMALE",
          "size": "SMALL",
          "name": "Daisy",
          "description":
              "Daisy is a young English Spot rabbit with a friendly disposition and a love for adventure. She enjoys exploring her surroundings and is always curious about new things. Daisy is very social and loves to interact with people, making her a great companion for families and children.",
          "weight": 4,
          "isFavorite": false,
          "price": 75,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "4 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": false,
            "isVaccinated": true
          }
        },
        {
          "id": 40,
          "type": "DOG",
          "breeds": "Siberian Husky",
          "age": 12,
          "gender": "MALE",
          "size": "LARGE",
          "name": "Shadow",
          "description":
              "Shadow is a majestic Siberian Husky with striking blue eyes and a playful spirit. He loves to run and play in the snow, showcasing his natural athleticism. Shadow is very friendly and enjoys being around people, making him a wonderful companion for active families who enjoy outdoor adventures.",
          "weight": 65,
          "isFavorite": false,
          "price": 300,
          "isAdopted": false,
          "picture":
              "https://images.pexels.com/photos/164345/pexels-photo-164345.jpeg?auto=compress&cs=tinysrgb&h=320&dpr=2",
          "distance": "5 miles",
          "attributes": {
            "isFriendly": true,
            "isHouseTrained": true,
            "isVaccinated": true
          }
        }
      ]
    });
  }
}
