// Create Event of obj_mob_spider
moving = false; // Initialize the moving flag

// Randomly determine initial direction (left or right)
if (random(2) == 0) {
    direction = 0; // Move right
} else {
    direction = 180; // Move left
}

// Set speed
speed = 1; // Adjust speed as needed
moving = true; // Set moving flag to true