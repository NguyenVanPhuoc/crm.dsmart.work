$(function () {
  if($('.statistics-chart-canvas').length > 0){
    /* Chart.js Charts */
    // Sales chart
    $(".statistics-chart-canvas").each(function(){
      var id = $(this).attr("id"),
        data_type = $(this).parent().attr('data-type') ? $(this).parent().attr('data-type') : 'line',
        barW = $(this).parent().attr('data-width') ? parseFloat($(this).parent().attr('data-width')) : 0.9,
        data_label = $(this).parent().attr('label') ? $(this).parent().attr('label') : 'Statistics',
        data_suffix = $(this).parent().attr('data-suffix') ? $(this).parent().attr('data-suffix') : '';
      var salesChartCanvas = document.getElementById(id).getContext('2d');
      var salesChartData = {
        labels  : $.parseJSON($('#'+id).parent().attr('data-label')),
        datasets: [
          {
            label               : data_label,
            backgroundColor     : 'rgba(60,141,188,0.9)',
            borderColor         : 'rgba(60,141,188,0.8)',
            pointRadius          : false,
            pointColor          : '#3b8bba',
            pointStrokeColor    : 'rgba(60,141,188,1)',
            pointHighlightFill  : '#fff',
            pointHighlightStroke: 'rgba(60,141,188,1)',
            data                : $.parseJSON($('#'+id).parent().attr('data')),
          },
        ]
      }
      var salesChartOptions = {
        maintainAspectRatio : false,
        responsive : true,
        legend: {
          display: false
        },
        scales: {
          xAxes: [{
            gridLines : {
              display : false,
            },
            barPercentage: barW
          }],
          yAxes: [{
            gridLines : {
              display : false,
            },
            ticks: {
              beginAtZero: true,
              userCallback: function(label, index, labels) {
                if (Math.floor(label) === label) return addCommas(label);
                  else return addCommas(label);
              },
            }
          }]
        },
        tooltips: {
          callbacks: {
            label: function(tooltipItem, data) {
              return data_label + ': ' + addCommas(tooltipItem.yLabel) + data_suffix;
            }
          }
        },
        hover: {
          mode: 'index',
          intersect: true,
        }
      }
      // This will get the first returned node in the jQuery collection.
        var salesChart = new Chart(salesChartCanvas, { 
          type: data_type, 
          data: salesChartData, 
          options: salesChartOptions
        }
      )
    })
  }


  if($('.doughnut-canvas').length > 0){
    $(".doughnut-canvas").each(function(){
      // Donut Chart
      var id = $(this).attr("id");
      var pieChartCanvas = document.getElementById(id).getContext('2d');
      var pieData = {
        labels: $(this).parent().attr('data-label').split(','),
        datasets: [
          {
            data: $(this).parent().attr('data').split(','),
            backgroundColor : $(this).parent().attr('data-colors').split(','),
          }
        ]
      }
      var pieOptions = {
        legend: {
          display: true
        },
        maintainAspectRatio : false,
        responsive : true,
      }
      var pieChart = new Chart(pieChartCanvas, {
        type: 'doughnut',
        data: pieData,
        options: pieOptions      
      });
    });
  };


  // Multi upload by dropzone
  if($('#multiDz').length > 0) {
    $('#multiDz').dropzone({
      autoProcessQueue: false,
      uploadMultiple: true,
      addRemoveLinks: true,
      dictRemoveFile: 'Remove',
      thumbnailHeight: 150,
      thumbnailWidth: 100,
      parallelUploads: 10,
      maxFiles: 10,
      // previewTemplate: $('#template-preview').html(),
      url: $('#multiDz').attr('data-action'),
      headers: {
        'x-csrf-token':$('input[name="_token"]').val(),
      },
      // The setting up of the dropzone
      init: function() {
        var multiDropzone = this;
        $('.library-op form button[type="submit"]').on("click", function(e) {
          // Make sure that the form isn't actually being sent.
          e.preventDefault();
          e.stopPropagation();
          if (multiDropzone.files != "") {
            multiDropzone.processQueue();
          } else {
            $('#multiDz').submit();
          }
        });

        this.on("sendingmultiple", function(files) {
          // Gets triggered when the form is actually being sent.
          // Hide the success button or the complete form.
        });
        this.on("successmultiple", function(files, response) {
          multiDropzone.removeFile(files);
          current_form = $('#mediaMulti form');
          var _token = $('input[name="_token"]').val();
          $.ajax({
            type: 'POST',
            url: current_form.attr('data-action'),
            cache: false,
            data:{
              '_token': _token,
              'catId': '',
              's': '',
              'chosen': $('input[name="attachment"]').val(),
            },
            success:function(data){              
              if(data.message!="error"){
                current_form.find('.list-media').html(data.html);
                current_form.find('.limit').val(data.limit);
                current_form.find('.current').val(data.current);
                current_form.find('.total').val(data.total);
              }
            }
          });
          // $('#multiDz').closest('form').submit();
        });
        this.on("errormultiple", function(files, response) {
          // Gets triggered when there was an error sending the files.
          // Maybe show form again, and notify user of error
        });
      }
    });
  }
});
// Dropzone.autoDiscover = false;
function addCommas(nStr) {
  nStr += '';
  x = nStr.split('.');
  x1 = x[0];
  x2 = x.length > 1 ? '.' + x[1] : '';
  var rgx = /(\d+)(\d{3})/;
  while (rgx.test(x1)) {
      x1 = x1.replace(rgx, '$1' + ',' + '$2');
  }
  return x1 + x2;
}