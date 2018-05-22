var map;

var shops = [
    ['Dnepr', 48.457395, 35.053237, 'г. Днепр, ул. Гоголя 15в, к. 18', '+38(056) 374-04-88'],
    ['Kharkov', 49.942180, 36.272001, 'г. Харьков, ул. Фонвизина, 18', '+38(057) 766-10-97'],
    ['Lvov', 49.810784, 24.062258, 'г. Львов, ул.Зелёная, 149, корпус 4, оф. 303', ' +38(050) 443-77-31'],
    ['Vinnitsa', 49.228418, 28.427722, 'г. Винница, ул. 600-летия, 17, корпус 21', '+38(0432) 55-03-88'],
    ['Odessa', 46.472186, 30.729777, 'г. Одесса, ул. Малая Арнаутская, 102', '+38(048) 722-17-71'],
    ['Zaporozhe', 47.867436, 35.114502, 'г. Запарожье, ул. Северное шоссе, 4, офис 307', '+38(061) 286-87-51'],
    ['Herson', 46.641818, 32.609380, 'г. Херсон, ул. Гирского 29, офис 1', ' +38(0552) 42-44-46'],
    ['Kirovograd', 48.516218, 32.270119, 'г. Кировоград, ул. Черновола, 1-б', '+38(0522) 59-50-39'],
    ['Kremenchyk', 49.087089, 33.432572, 'г. Кременчук, ул. 60 лет Октября, 54-А', ' +38(068) 322-99-22'],
    ['Kiev', 50.460633, 30.455574, 'г. Киев, ул. Дегтярёвская 25а, корпус 1, секция №3, оф. 413', '+38(044) 223-85-20']
];

function initMap() {

    var infowindow = new google.maps.InfoWindow({
        // pixelOffset: new google.maps.Size(200,150),
    });
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 14,
        center: new google.maps.LatLng(50.460633, 30.455574),
        styles: [
            {
                "featureType": "all",
                "elementType": "labels.text.fill",
                "stylers": [
                    {
                        "saturation": 36
                    },
                    {
                        "color": "#333333"
                    },
                    {
                        "lightness": 40
                    }
                ]
            },
            {
                "featureType": "all",
                "elementType": "labels.text.stroke",
                "stylers": [
                    {
                        "visibility": "on"
                    },
                    {
                        "color": "#ffffff"
                    },
                    {
                        "lightness": 16
                    }
                ]
            },
            {
                "featureType": "all",
                "elementType": "labels.icon",
                "stylers": [
                    {
                        "visibility": "off"
                    }
                ]
            },
            {
                "featureType": "administrative",
                "elementType": "geometry.fill",
                "stylers": [
                    {
                        "color": "#fefefe"
                    },
                    {
                        "lightness": 20
                    }
                ]
            },
            {
                "featureType": "administrative",
                "elementType": "geometry.stroke",
                "stylers": [
                    {
                        "color": "#fefefe"
                    },
                    {
                        "lightness": 17
                    },
                    {
                        "weight": 1.2
                    }
                ]
            },
            {
                "featureType": "landscape",
                "elementType": "geometry",
                "stylers": [
                    {
                        "color": "#f5f5f5"
                    },
                    {
                        "lightness": 20
                    }
                ]
            },
            {
                "featureType": "poi",
                "elementType": "geometry",
                "stylers": [
                    {
                        "color": "#f5f5f5"
                    },
                    {
                        "lightness": 21
                    }
                ]
            },
            {
                "featureType": "poi.business",
                "elementType": "all",
                "stylers": [
                    {
                        "visibility": "off"
                    }
                ]
            },
            {
                "featureType": "poi.park",
                "elementType": "geometry",
                "stylers": [
                    {
                        "color": "#dedede"
                    },
                    {
                        "lightness": 21
                    }
                ]
            },
            {
                "featureType": "road.highway",
                "elementType": "geometry.fill",
                "stylers": [
                    {
                        "color": "#ffffff"
                    },
                    {
                        "lightness": 17
                    }
                ]
            },
            {
                "featureType": "road.highway",
                "elementType": "geometry.stroke",
                "stylers": [
                    {
                        "color": "#ffffff"
                    },
                    {
                        "lightness": 29
                    },
                    {
                        "weight": 0.2
                    }
                ]
            },
            {
                "featureType": "road.arterial",
                "elementType": "geometry",
                "stylers": [
                    {
                        "color": "#ffffff"
                    },
                    {
                        "lightness": 18
                    }
                ]
            },
            {
                "featureType": "road.local",
                "elementType": "geometry",
                "stylers": [
                    {
                        "color": "#ffffff"
                    },
                    {
                        "lightness": 16
                    }
                ]
            },
            {
                "featureType": "transit",
                "elementType": "geometry",
                "stylers": [
                    {
                        "color": "#f2f2f2"
                    },
                    {
                        "lightness": 19
                    }
                ]
            },
            {
                "featureType": "transit.station.rail",
                "elementType": "labels",
                "stylers": [
                    {
                        "visibility": "simplified"
                    },
                    {
                        "hue": "#fbd402"
                    }
                ]
            },
            {
                "featureType": "transit.station.rail",
                "elementType": "labels.text",
                "stylers": [
                    {
                        "visibility": "on"
                    },
                    {
                        "lightness": "0"
                    },
                    {
                        "saturation": "-68"
                    }
                ]
            },
            {
                "featureType": "transit.station.rail",
                "elementType": "labels.icon",
                "stylers": [
                    {
                        "visibility": "on"
                    }
                ]
            },
            {
                "featureType": "water",
                "elementType": "geometry",
                "stylers": [
                    {
                        "color": "#e9e9e9"
                    },
                    {
                        "lightness": 17
                    }
                ]
            }
        ]
    });

    function placeMarker(shop) {
        var latLng = new google.maps.LatLng(shop[1], shop[2]);
        var image = {
            url: '../img/main/marker.png'
        };
        var shape = {
            coords: [1, 1, 1, 20, 18, 20, 18, 1],
            type: 'poly'
        };
        var marker = new google.maps.Marker({
            position: latLng,
            icon: image,
            shape: shape,
            title: shop[3],
            map: map
        });

        google.maps.event.addListener(infowindow, 'domready', function () {
            var iwOuter = $('.gm-style-iw');
            var iwBackground = iwOuter.prev();
            iwBackground.children(':nth-child(2)').css({
                'box-shadow': '0 0 20px rgba(0,0,0,0.5)'
                // 'display': 'none'
            });
            // iwBackground.children(':nth-child(3)').find('div').children().css({
            //     'display': 'none',
            //     'border': 'none'
            // });

        });
        google.maps.event.addListener(marker, 'click', function () {
            infowindow.close(); // Close previously opened infowindow
            infowindow.setContent("<div id='infowindow'>" + '<div id="infoAddress">' +
                '<p>' + 'Адрес: ' + shop[3] + '</p>' + '<p>' + 'Телефон: ' + shop[4] + '</p>' + '</div>' + "</div>");
            infowindow.open(map, marker);
        });
    }


    for (var i = 0; i < shops.length; i++) {
        placeMarker(shops[i]);
    }
}
initMap();
/* google.maps.event.addDomListener(window, 'load', initMap); */
