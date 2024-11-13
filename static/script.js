// static/script.js

// Function to filter products by category
function filterProducts(category) {
    const products = document.querySelectorAll('.product-card');
    const buttons = document.querySelectorAll('.category-button');

    products.forEach(product => {
        if (category === 'all' || product.getAttribute('data-category') === category) {
            product.style.display = 'block';
        } else {
            product.style.display = 'none';
        }
    });

    // Update active button
    buttons.forEach(button => {
        button.classList.remove('active');
    });
    document.querySelector(`.category-button[onclick="filterProducts('${category}')"]`).classList.add('active');
}

// Function to filter products by search query
function searchProducts() {
    const query = document.getElementById('searchInput').value.toLowerCase();
    const products = document.querySelectorAll('.product-card');

    products.forEach(product => {
        const productName = product.getAttribute('data-name');
        
        // Show the product if it matches the search query
        if (productName.includes(query)) {
            product.style.display = 'block';
        } else {
            product.style.display = 'none';
        }
    });
}

// Function to add an item to the cart
function addToCart(itemId, availableStock) {
    let quantity = prompt("Enter quantity to add:");
    quantity = parseInt(quantity, 10);

    if (isNaN(quantity) || quantity <= 0) {
        alert("Please enter a valid quantity.");
        return;
    }

    if (quantity > availableStock) {
        alert("Quantity exceeds available stock.");
        return;
    }

    fetch(`/add_to_cart/${itemId}`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({ quantity: quantity }),
    }).then(response => response.json())
      .then(data => alert(data.message));
}

