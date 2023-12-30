// 當文檔加載完畢後執行以下函數
$(document).ready(function() {

    // 綁定表單提交事件到函數
    $('#createActivityForm').on('submit', function(e) {
        e.preventDefault();  // 阻止表單默認提交行為

        // 獲取輸入框（id為actName）的值
        var actName = $('#actName').val();

        // 發起一個Ajax POST請求
        $.ajax({
            url: '/activities',  // 請求的URL，指向後端的'/activities'路由
            method: 'GET',      // 使用POST方法
            contentType: 'application/json',  // 發送信息至服務器時內容編碼類型
            data: JSON.stringify({ value: { actName: actName } }),  // 將活動名稱轉換為JSON字符串作為請求體
            success: function(response) {  // 請求成功時的回調函數
                console.log(response);  // 在控制台打印響應數據
            },
            error: function(xhr, status, error) {  // 請求失敗時的回調函數
                console.error("Error occurred: " + error);  // 在控制台打印錯誤信息
            }
        });
    });

    // 綁定點擊加載活動按鈕事件到函數
    $('#loadActivities').on('click', function() {
        // 發起一個Ajax GET請求
        $.ajax({
            url: '/activities',  // 請求的URL，指向後端的'/activities'路由
            method: 'GET',       // 使用GET方法
            success: function(activities) {  // 請求成功時的回調函數
                // 獲取一個id為activities的div元素
                var activitiesDiv = $('#activities');
                activitiesDiv.empty();  // 清空該div元素的內容

                // 遍歷所有活動數據
                $.each(activities, function(index, act) {
                    // 將每個活動的名稱添加到div元素中
                    activitiesDiv.append('<div>' + act.actName + '</div>');
                });
            }
        });
    });
});
