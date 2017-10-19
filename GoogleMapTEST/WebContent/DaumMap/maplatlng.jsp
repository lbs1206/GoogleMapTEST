<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>Ŭ���� ��ġ�� ��Ŀ ǥ���ϱ�</title>
    
</head>
<body>
<div id="map" style="width:100%;height:350px;"></div>
<p><em>������ Ŭ�����ּ���!</em></p> 
<div id="clickLatlng"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3c5f53af8c1833b8d3ba3101e1af676d"></script>
<script>
var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
    mapOption = { 
        center: new daum.maps.LatLng(33.450701, 126.570667), // ������ �߽���ǥ
        level: 3 // ������ Ȯ�� ����
    };

var map = new daum.maps.Map(mapContainer, mapOption); // ������ �����մϴ�

// ������ Ŭ���� ��ġ�� ǥ���� ��Ŀ�Դϴ�
var marker = new daum.maps.Marker({ 
    // ���� �߽���ǥ�� ��Ŀ�� �����մϴ� 
    position: map.getCenter() 
}); 
// ������ ��Ŀ�� ǥ���մϴ�
marker.setMap(map);

// ������ Ŭ�� �̺�Ʈ�� ����մϴ�
// ������ Ŭ���ϸ� ������ �Ķ���ͷ� �Ѿ�� �Լ��� ȣ���մϴ�
daum.maps.event.addListener(map, 'click', function(mouseEvent) {        
    
    // Ŭ���� ����, �浵 ������ �����ɴϴ� 
    var latlng = mouseEvent.latLng; 
    
    // ��Ŀ ��ġ�� Ŭ���� ��ġ�� �ű�ϴ�
    marker.setPosition(latlng);
    
    var message = 'Ŭ���� ��ġ�� ������ ' + latlng.getLat() + ' �̰�, ';
    message += '�浵�� ' + latlng.getLng() + ' �Դϴ�';
    
    var resultDiv = document.getElementById('clickLatlng'); 
    resultDiv.innerHTML = message;
    
});
</script>
</body>
</html>