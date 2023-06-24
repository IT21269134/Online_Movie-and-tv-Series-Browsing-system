function showTable(tableIdToShow) {
	  hideAllTables();
	  
	  let tableElement = document.getElementById(tableIdToShow);

	  tableElement.classList.add('show');
	}

	function hideAllTables() {
	  let allTableElements = document.querySelectorAll('.table');

	  for (tableElement of allTableElements) {
	    tableElement.classList.remove('show')
	  }
	}