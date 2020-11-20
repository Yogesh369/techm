var SiteUrl="http://localhost/techm/public";

if(PageName == "Router"){ 
   
          $(function() {
            $('.router').DataTable({
                processing: true,
                serverSide: true,
                ajax:SiteUrl+"/getrouters",
                columns: [
                    { data: 'id', name: 'id' },
                    { data: 'SapId', name: 'SapId' },
                    { data: 'HostName', name: 'HostName' },
                    { data: 'loopback', name: 'loopback' },
                    { data: 'macaddress', name:'macaddress'},
                    { data: 'created_at', name:'created_at'},
                    { data: 'action', name: 'action', orderable: false, searchable: false},                                      
                ]
            });
        });
}