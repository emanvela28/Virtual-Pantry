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
