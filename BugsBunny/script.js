document.addEventListener('DOMContentLoaded', function () {
    // Datos pregrabados de ventas de conejos
    const salesData = {
        totalSales: 1500,
        monthlySales: 300,
        annualSales: 1200
    };

    // Actualizar el contenido del dashboard con los datos pregrabados
    document.getElementById('totalSales').innerText = salesData.totalSales;
    document.getElementById('monthlySales').innerText = salesData.monthlySales;
    document.getElementById('annualSales').innerText = salesData.annualSales;
});