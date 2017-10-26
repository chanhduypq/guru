function validateFromPrice(input, obj)
{
    var regex_price = /^\d+(\.\d{2})?$/;
    if ((regex_price.test(input)))
    {
        $(obj).removeClass('error');
    }
    else
    {
        //$(obj).addClass('error');
        //alert('Invalid Price');
    }
}

function validateToPrice(input, obj)
{
    var regex_price = /^\d+(\.\d{2})?$/;
    if ((regex_price.test(input)))
    {
        $(obj).removeClass('error');
    }
    else
    {
        //$(obj).addClass('error');
        //alert('Invalid Price');
    }
}

function submitPriceRangeOld()
{
    //alert('submitPriceRange()...');
    if ($('#prangefrom').hasClass('error') || $('#prangeto').hasClass('error') || $('#prangefrom').val() == '' || $('#prangeto').val() == '')
    {
        //alert('Please check either Price Range is Empty or Invalid.');
    }
    else
    {
        //alert('Ready to process request....');
        untickCheckboxes('PricePanel');
        callajax('1');
    }
}

function submitPriceRange()
{
    var objfrom = $('#prangefrom');
    var objto = $('#prangeto');
    validateFromPrice($(objfrom).val(), objfrom);
    validateToPrice($(objto).val(), objto)
    if ($(objfrom).val() == '' && $(objto).val() == '')
    {
        clearText('1');
    }
    if (!$('#prangefrom').hasClass('error') && $('#prangefrom').val() != '' && $('#prangeto').val() == '')
    {
        untickCheckboxes('PricePanel');
        hideShowRange('0');
        callajax('1');
    }
    else if (!$('#prangeto').hasClass('error') && $('#prangeto').val() != '' && $('#prangefrom').val() == '')
    {
        untickCheckboxes('PricePanel');
        hideShowRange('0');
        callajax('1');
    }
    else if (!$('#prangefrom').hasClass('error') && !$('#prangeto').hasClass('error') && $('#prangefrom').val() != '' && $('#prangeto').val() != '')
    {
        untickCheckboxes('PricePanel');
        hideShowRange('0');
        callajax('1');
    }
    else
    {
        //alert('Please check either Price Range is Empty or Invalid.');
    }

    showHideClearBtn();
}

function hideShowRange(mode)
{
    $('#PricePanel').children().each(function()
    {
        if ($(this).hasClass('hdrange'))
        {
            if (mode == '0')
            {
                $(this).hide();
            }
            else
            {
                $(this).show();
            }
        }
    });
}

function validateDate(obj) {
    return false;
    
    var nums = $(obj).val().match(/\d+/g);
    var m = Number(nums[1]) - 1; //month starts from 0
    var d = Number(nums[0]);
    var y = (Number(nums[2]) < 100 ? 2000 : 0) + Number(nums[2]);
    var date = new Date(y, m, d);
    // this is where the date gets validated
    m = (date.getMonth() < 9 ? '0' : '') + (date.getMonth() + 1).toString();
    d = (date.getDate() < 10 ? '0' : '') + date.getDate().toString();
    y = date.getFullYear().toString();
    //$(obj).val(m+'/'+d+'/'+y);
    $(obj).val('');
}


function submitDateRange()
{
    if ($('#drangefrom').val() == '' && $('#drangeto').val() == '')
    {
        //alert('Please check Date Range should not be Empty.');
    }
    else
    {
        //alert('Ready to process request....');
        untickCheckboxes('Amen');
        callajax('1');
    }

    showHideClearBtn();
}

function findlocation(srhboxid)
{
    //alert('Hello....'+srhboxid);
    var srhtxt = $('#' + srhboxid).val();
    var begpath = serverpath + 'result.php';
    var qstr = "?searchKey=" + srhtxt;
    var loc = begpath + qstr;
    if (srhtxt != '')
    {
        window.location = loc
    }
    else
    {
        alert('Please enter keyword to be found...');
    }
}

function setPriceCount()
{
    var str = $('#hflPRangeCnt').val();
    if (typeof str === 'undefined')
        return false;
    var arr = str.split(Rowsep);
    var i = 0;
    var html = '';
    $('#PricePanel').find('a').each(function() {
        if ($(this).attr('id') == arr[i].split(Colsep)[0])
        {
            html = $(this).html();
            $(this).html(html + ' ( ' + arr[i].split(Colsep)[1] + ' )');
        }
        i++;
    });
}

function untickCheckboxes(pid)
{
    $('#' + pid).find(':checkbox').each(function() {
        $(this).prop("checked", false);
    });
}

function setCheckbox123(pid, cntid)
{
    if (checkForDuplicateIds(cntid) <= 1)
    {
        $('#' + pid).find(':checkbox').each(function() {
            if ($(this).attr('id') == cntid)
            {
                if ($(this).is(':checked'))
                {
                    $(this).prop("checked", false);
                }
                else
                {
                    $(this).prop("checked", true);
                }
            }
        });
    }
    else
    {

    }
}

function checkForDuplicateIds(cntid)
{
    var pid = 'PricePanel';
    var count = 0;
    $('#' + pid).find(':checkbox').each(function() {
        if ($(this).attr('id') == cntid)
        {
            count++;
        }
    });
    return count;
}


function setCheckbox(pid, cntid)
{
    $('#' + pid).find(':checkbox').each(function() {
        if ($(this).attr('id') == cntid)
        {
            if ($(this).is(':checked'))
            {
                $(this).prop("checked", false);
            }
            else
            {
                $(this).prop("checked", true);
            }
        }
    });
}


function setDateCheckbox(pid, cntid)
{
    $('#' + pid).find(':checkbox').each(function() {
        if ($(this).attr('id') == cntid)
        {
            if ($(this).is(':checked'))
            {
                $(this).prop("checked", false);
            }
            else
            {
                $(this).prop("checked", true);
            }
        }
        else
        {
            $(this).prop("checked", false);
        }
    });
}

function getListFrom()
{
    var str = '';
    $('#OffTypePanel').find(':checkbox').each(function() {
        if ($(this).is(':checked'))
        {
            str += $(this).attr('id') + Colsep;
        }
    });
    str = str.substring(0, str.lastIndexOf(Colsep));
    $('#hflSourceData').val(str);
    //alert('SRData='+$('#hflSourceData').val());
    return str;
}

function getPriceRange()
{
    //alert('getPriceRange() callingg....');
    var str = '';
    var i = 0;
    var rgtype = '';
    $('#PricePanel').find(':checkbox').each(function() {
        if ($(this).is(':checked'))
        {
            if (i == 0)
            {
                rgtype += 'LR';
            }
            if (i == 1)
            {
                rgtype += 'MR';
            }
            if (i == 2)
            {
                rgtype += 'HR';
            }
            str += $(this).attr('id') + '-' + rgtype + Colsep;
        }
        i++;
    });
    str = str.substring(0, str.lastIndexOf(Colsep));
    $('#hflPRangeData').val(str);
    //alert('PRData='+$('#hflPRangeData').val());
    return str;
}
/*
 function getPriceRangeOld()
 {
 //alert('getPriceRange() callingg....');
 var str='';   
 $('#PricePanel').find(':checkbox').each(function(){
 if($(this).is(':checked'))
 {           
 str+=$(this).attr('id')+Colsep;
 }
 i++;
 });
 str=str.substring(0,str.lastIndexOf(Colsep));
 $('#hflPRangeData').val(str);
 //alert('PRData='+$('#hflPRangeData').val());
 return str;
 }*/

function updatePriceRangeIds(retstr)
{
    var str = '';
    var i = 0;
    //if($('#prangefrom').val()=='' && $('#prangeto').val())
    if (retstr.indexOf('SEPROW') >= 0)
    {
        retstr = retstr.replace(/SEPROW$/i, '');
        str = retstr.split('SEPROW');
        //alert('setAjaxSourceCount() str='+str);
        $('#PricePanel').find('a').each(function() {

            if (i == 0)
            {
                //changeCheckboxId($(this).attr('id'),str[i].split('SEPCOL')[0]);
                changeCheckboxId(i, str[i].split('SEPCOL')[0]);
                //$(this).html('Lowest Range ( '+str[i].split('SEPCOL')[1]+' )');
                $(this).attr('id', str[i].split('SEPCOL')[0]);
                //alert('i=0 now id='+$(this).attr('id'));
            }
            else if (i == 1)
            {
                //changeCheckboxId($(this).attr('id'),str[i].split('SEPCOL')[0]);
                changeCheckboxId(i, str[i].split('SEPCOL')[0]);
                //$(this).html('Medium Range ( '+str[i].split('SEPCOL')[1]+' )');
                $(this).attr('id', str[i].split('SEPCOL')[0]);
                //alert('i=1 now id='+$(this).attr('id'));
            }
            else if (i == 2)
            {
                //changeCheckboxId($(this).attr('id'),str[i].split('SEPCOL')[0]);
                changeCheckboxId(i, str[i].split('SEPCOL')[0]);
                //$(this).html('Highest Range ( '+str[i].split('SEPCOL')[1]+' )');
                $(this).attr('id', str[i].split('SEPCOL')[0]);
                //alert('i=2 now id='+$(this).attr('id'));
            }
            i++;
        });
    }

}

function changeCheckboxId(pos, newid)
{
    var i = 0;
    $('#PricePanel').find(':checkbox').each(function() {
        if (i == pos)
        {
            $(this).attr('id', newid);
        }
        i++;
    });
}
/*
 function changeCheckboxId_Old(id,newid)
 {
 $('#PricePanel').find(':checkbox').each(function(){
 if($(this).attr('id')==id)
 {
 $(this).attr('id',newid);
 }
 });
 }*/

function setPriceRange()
{
    //alert('setPriceRange() callingg....');
    var str = '';
    $('#PricePanel').find(':checkbox').each(function() {
        str += $.trim($(this).attr('id')) + Colsep;
    });
    str = str.substring(0, str.lastIndexOf(Colsep));
    $('#hflPriceRange').val(str);
    //alert('str='+$('#hflPriceRange').val());
}

function getDateParam()
{
    var str = '';
    $('#Amen').find(':checkbox').each(function() {
        if ($(this).is(':checked'))
        {
            str += $(this).attr('id') + Colsep;
        }
    });
    str = str.substring(0, str.lastIndexOf(Colsep));
    $('#hflDateData').val(str);
    //alert('DateData='+$('#hflDateData').val());
    return str;
}


function callajax(page)
{
    var source;
    var prrange;
    var dtrange;
    //alert('callajax() page='+page);
    source = getListFrom();
    source = source.replace('undefined', '');
    prrange = getPriceRange();
    prrange = prrange.replace('undefined', '');
    dtrange = getDateParam();
    dtrange = dtrange.replace('undefined', '');
    //setPriceCount();
    //alert('Source='+source+'prrange='+prrange+'page='+page+'prangefrom='+$('#drangefrom').val()+'prangeto='+$('#drangeto').val());
    sendAjax(page);
}


function sendAjax(page)
{
    $('#page_loading_container').show().fadeIn();
    var selopt = '';
    $.ajax({
        url: serverpath + 'ajax.php',
        type: 'POST',
        data: $('#listform').serialize() + '&page=' + page,
        success: function(output) {
            //alert('output='+output);
            $('#page_loading_container').hide();
            $('#TotRecLi').html(output.split('COLSEP')[0]);
            $('#RowListing').html(output.split('COLSEP')[1]);
            var pagination_data = output.split('COLSEP')[2];            
            $('.pageDiv').html(pagination_data.split('||')[0]);
            var total_pages = pagination_data.split('||')[1];
            if (total_pages > 0) {
                $('select[name=Page]').html('');
                for (i = 1; i <= total_pages; i++) {
                    $('select[name=Page]').append('<option value="'+i+'"'+(page == i ? ' selected' : '')+'>'+i+'</option>')
                }
            } else {
                $('select[name=Page]').hide();
            }
            //alert('Ajax='+output.split('COLSEP')[0]);
            // if not used price filter
            if ($('#prangefrom').val() == '' && $('#prangeto').val() == '' && !$('.hdrange:checked').length)
                hidePriceRange($.trim(output.split('COLSEP')[0].replace('Records Found', '')));
            //alert('I am Here');
            //alert('Ajax='+output.split('COLSEP')[4]);
            updatePriceRangeIds(output.split('COLSEP')[4]);
            //alert('Ajax Range Count='+output.split('COLSEP')[4]);
            setRangeSpan(output.split('COLSEP')[4]);
            setHflPriceRange(output.split('COLSEP')[4]);
            changeDollarToCurrency();
            //alert('Source Count='+output.split('COLSEP')[4]);
            //alert('Source Count='+output.split('COLSEP')[3]);
            setAjaxSourceCount(output.split('COLSEP')[3]);
            //alert('Price Count='+output.split('COLSEP')[4]);
            if (getPriceRange().length <= 0)
            {
                setAjaxPriceCount(output.split('COLSEP')[4]);
            }
            //alert('Price Count='+output.split('COLSEP')[5]);
            //setAjaxDateCount(output.split('COLSEP')[5])
            hideUnhideClearAll();

            //alert('Date Count='+output.split('COLSEP')[5]);
            //alert('Afte Date Count');
            loadDefaultCurrency();
            loadOriginalCurrency();
            loadOriginalPrice();
            selopt = $("#currency option:selected").val();
            currencyConvertor(selopt);
            //getPriceCount();
            /*
             if(output.split('COLSEP')[6]!='')
             {  
             //updatePriceRangeIds(output.split('COLSEP')[6]);
             //alert('Price Range Count'+output.split('COLSEP')[6]);
             setAjaxPriceRangeCount(output.split('COLSEP')[6]);
             }*/
            removeSpecialCharResult();
            testgetPriceCount();
            
            window.setTimeout(function() {
                $(window).scrollTop(0); 
            }, 0);
        },
        error: function() {
            $('#page_loading_container').hide();
            //alert('Ajax Error Occuring...');
        }
    });
}

function setRangeSpan(retstr)
{
    var symbol = '$';
    var hyphen = ' - ';
    var range = retstr.split('SEPROW');
    var r1 = range[0].split('SEPCOL')[0].split('-')[0];
    var r2 = range[0].split('SEPCOL')[0].split('-')[1];
    var r3 = range[1].split('SEPCOL')[0].split('-')[0];
    var r4 = range[1].split('SEPCOL')[0].split('-')[1];
    var r5 = range[2].split('SEPCOL')[0].split('-')[0];
    var r6 = range[2].split('SEPCOL')[0].split('-')[1];

    r1 = formatMoney(r1, 0);
    r2 = formatMoney(r2, 0);
    r3 = formatMoney(r3, 0);
    r4 = formatMoney(r4, 0);
    r5 = formatMoney(r5, 0);
    r6 = formatMoney(r6, 0);

    $('#lowestspan').html(symbol + r1 + hyphen + symbol + r2 + ' (' + range[0].split('SEPCOL')[1] + ')');
    $('#middlespan').html(symbol + r3 + hyphen + symbol + r4 + ' (' + range[1].split('SEPCOL')[1] + ')');
    $('#highestspan').html(symbol + r5 + hyphen + symbol + r6 + ' (' + range[2].split('SEPCOL')[1] + ')');
    /*
     $('#lowestspan').html(range[0].split('SEPCOL')[0]+' ('+range[0].split('SEPCOL')[1]+')');
     $('#middlespan').html(range[1].split('SEPCOL')[0]+' ('+range[1].split('SEPCOL')[1]+')');
     $('#highestspan').html(range[2].split('SEPCOL')[0]+' ('+range[2].split('SEPCOL')[1]+')');
     */
}

function getPriceCount()
{
    var str = '';
    //alert('getPriceCount()....');
    $('#PricePanel').find(':checkbox').each(function() {
        str += $(this).attr('id') + ',';
    });
    //alert('Price Range Id='+str);
}

function testgetPriceCount()
{
    var str = 'Checkbox Ids= ';
    //alert('getPriceCount()....');
    $('#PricePanel').find(':checkbox').each(function() {
        str += $(this).attr('id') + ',';
    });
    str += ' | Link Ids= ';
    $('#PricePanel').find('a').each(function() {
        str += $(this).attr('id') + ',';
    });
    //alert('testgetPriceCount() Now Price Range Id='+str);
}

function loadDefaultCurrency()
{
    var str = '';
    $('span[id^="paraprice_"]').each(function() {
        //alert('ID='+$(this).attr('id')+' Html='+$(this).html());
        str = str + $(this).attr('id') + Colsep + $(this).html() + Rowsep;
    });
    str = str.substring(0, str.lastIndexOf(Rowsep));
    $('#hflDefPrice').val($.trim(str));
    //alert('hflDefPrice='+$('#hflDefPrice').val());
}

function loadOriginalCurrency()
{
    var str = '';
    $('span[id^="orgcurrency_"]').each(function() {
        //alert('ID='+$(this).attr('id')+' Html='+$(this).html());
        str = str + $(this).attr('id') + Colsep + $(this).html() + Rowsep;
    });
    str = str.substring(0, str.lastIndexOf(Rowsep));
    $('#hflOrgCurrency').val($.trim(str));
    //alert('hflOrgCurrency='+$('#hflOrgCurrency').val());
}



function defaultCurrency()
{
    var str = '';
    $("#currency option").each(function()
    {
        if ($(this).val() == 'DEF')
        {
            str = $(this).html();
        }
    });
    return str;
}

function calculateCurrency(mulby, price)
{
    var val = 0;
    //alert('mulby='+mulby+' Price='+price);
    val = parseFloat($.trim(price)) * parseFloat(mulby);
    //alert('val='+val);
    return val;
}

function selDDByText(text)
{
    $("#currency").each(function() {
        $('option', this).each(function() {
            if ($(this).text().toLowerCase() == text.toLowerCase()) {
                $(this).attr('selected', 'selected')
            }
            ;
        });
    });
}

function retDDValByText(text)
{
    //alert('retDDValByText() text='+text);
    var str = '';
    $("#currency option").each(function()
    {
        if ($(this).text().toLowerCase() == text.toLowerCase())
        {
            str = $(this).val();
            //alert('Inside this.text='+$(this).text().toLowerCase()+' Text='+text.toLowerCase()+' This.val='+$(this).val());
            return str;
        }
    });
    //alert('retDDValByText() return str='+str);
    return str;
}

function callsessvalajax()
{
    //alert('callsessvalajax calling..'+selopt);
    var str = '';
    var txt = '';
    str = $("#currency option:selected").val();
    txt = $("#currency option:selected").text();
    sendsessvalAjax(str, txt);
}

function sendsessvalAjax(str, txt)
{
    $.ajax({
        url: serverpath + 'sessval.php',
        type: 'POST',
        data: $('#listform').serialize() + '&str=' + str + '&txt=' + txt,
        success: function(output) {
            //alert('Session Output='+output);
            changeDollarToCurrency();
        },
        error: function() {
            alert('Ajax Error Occuring...');
        }
    });
}

function setAjaxSourceCount(retstr)
{
    //alert('source count='+retstr);
    var str = '';
    var i = 0;
    retstr = retstr.replace(/SEPROW$/i, '');
    //alert('setAjaxSourceCount() str='+retstr);
    str = retstr.split('SEPROW');
    $('#OffTypePanel').find('a').each(function() {
        if (findLink($(this).html(), str).length > 1)
        {
            $(this).html(findLink($(this).html(), str));
        }
        i++;
    });
}

function findLink(html, str)
{
    var retstr = '';
    for (i = 0; i < str.length; i++)
    {
        if (html.indexOf(str[i].split('SEPCOL')[0]) >= 0)
        {
            retstr = str[i].split('SEPCOL')[1];
        }
    }
    return retstr;
}

function setAjaxPriceCount(retstr)
{
    var str = '';
    var i = 0;
    //alert('setAjaxPriceCount() retstr='+retstr);
    if (retstr.indexOf('SEPROW') >= 0)
    {
        retstr = retstr.replace(/SEPROW$/i, '');
        str = retstr.split('SEPROW');
        //alert('setAjaxSourceCount() str='+str);
        $('#PricePanel').find('a').each(function() {

            if (i == 0)
            {
                $(this).html('Lowest Range ( ' + str[i].split('SEPCOL')[1] + ' )');
            }
            else if (i == 1)
            {
                $(this).html('Medium Range ( ' + str[i].split('SEPCOL')[1] + ' )');
            }
            else if (i == 2)
            {
                $(this).html('Highest Range ( ' + str[i].split('SEPCOL')[1] + ' )');
            }
            i++;
        });
    }
    else
    {
        if ($('#prangefrom').val() == '' && $('#prangeto').val())
        {
            //$('#boldprange').html('');
        }
        else
        {
            //$('#boldprange').html(retstr);
        }
    }
}

function setAjaxPriceRangeCount(retstr)
{
    //alert('setAjaxPriceRangeCount() retstr='+retstr);
    var str = '';
    var i = 0;
    //if($('#prangefrom').val()=='' && $('#prangeto').val())
    if (retstr.indexOf('-RTX-') >= 0)
    {
        retstr = retstr.replace(/-RTX-$/i, '');
        str = retstr.split('-RTX-');
        //alert('setAjaxSourceCount() str='+str);
        $('#PricePanel').find('a').each(function() {

            if (i == 0)
            {
                $(this).html('Lowest Range ( ' + str[i].split('-CTX-')[1] + ' )');
            }
            else if (i == 1)
            {
                $(this).html('Medium Range ( ' + str[i].split('-CTX-')[1] + ' )');
            }
            else if (i == 2)
            {
                $(this).html('Highest Range ( ' + str[i].split('-CTX-')[1] + ' )');
            }
            i++;
        });
    }
}

function setAjaxDateCount(retstr)
{
    //alert('DateCount='+retstr);
    if ($('#drangefrom').val() == '' && $('#drangeto').val() == '')
    {
        //$('#bolddtrange').html('');
    }
    else
    {
        //$('#bolddtrange').html(retstr);
    }
    /*var str=''; var i=0;
     retstr = retstr.replace(/SEPROW$/i, '');
     str = retstr.split('SEPROW');
     //alert('setAjaxDateCount() str='+str);
     $('#Amen').find('a').each(function(){
     if($(this).html().indexOf(str[i].split('SEPCOL')[0]) >= 0) 
     {
     $(this).html(str[i].split('SEPCOL')[1]);
     }
     i++;
     });*/
}

function clearText(mode)
{
    if (mode == '1')
    {
        hideShowRange('1');
        $('#prangefrom').val('');
        $('#prangeto').val('');
        $('#boldprange').html('');
    }
    else
    {
        $('#drangefrom').val('');
        $('#drangeto').val('');
        $('#bolddtrange').html('');
    }
    //alert('Hello')
    showHideClearBtn();
    callajax('1');
}

function clearAll()
{
    $('#prangefrom').val('');
    $('#prangeto').val('');
    $('#boldprange').html('');
    $('#drangefrom').val('');
    $('#drangeto').val('');
    $('#bolddtrange').html('');
    untickCheckboxes('OffTypePanel');
    untickCheckboxes('PricePanel');
    clearText('1');
    callajax('1');
    showHideClearBtn();
}

formatMoney = function(n, c, d, t) {
    var c = isNaN(c = Math.abs(c)) ? 2 : c,
            d = d == undefined ? "." : d,
            t = t == undefined ? "," : t,
            s = n < 0 ? "-" : "",
            i = parseInt(n = Math.abs(+n || 0).toFixed(c)) + "",
            j = (j = i.length) > 3 ? j % 3 : 0;
    return s + (j ? i.substr(0, j) + t : "") + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + t) + (c ? d + Math.abs(n - i).toFixed(c).slice(2) : "");
};

function showHideClearBtn() {
    if (!$('#prangefrom').length)
        return false;
    if ($('#prangefrom').val().length || $('#prangeto').val().length) {
        $('#clear_1').show();
    } else {
        $('#clear_1').hide();
    }

    if ($('#drangefrom').val().length || $('#drangeto').val().length) {
        $('#clear_2').show();
    } else {
        $('#clear_2').hide();
    }
}

function sorting(val)
{
    //alert('val='+val);
    $('#hflDDSort').val(val);
    callajax('1');
}

/*
 function OldsendToPage(id)
 {
 var path = serverpath + 'productdetail.php?q=' + id;
 //alert('Path='+path);
 window.open(path, '_blank');
 }*/

function sendToPage(path)
{
    //alert('path='+path);
    window.open(path, '_blank');
}


function hideUnhideClearAll()
{
    //alert('hideUnhideClearAll() callingg...');
    var dtcount = 0;
    var ptcount = 0;
    if ($('#drangefrom').val() == '' && $('#drangeto').val() == '')
    {
        dtcount = 0;
    }
    else
    {
        dtcount = 1;
    }

    if ($('#prangefrom').val() == '' && $('#prangeto').val() == '')
    {
        ptcount = 0;
    }
    else
    {
        ptcount = 1;
    }

    if (dtcount <= 0 && ptcount <= 0 && countCheckBox() <= 0)
    {
        //alert('Inside If Part');
        $('#btnclearallfilter').hide();
    }
    else
    {
        //alert('Inside Else Part');
        $('#btnclearallfilter').show();
    }
}

function countCheckBox()
{
    var count = 0;
    $('#OffTypePanel').find(':checkbox').each(function() {
        if ($(this).is(':checked'))
        {
            count++;
        }
    });
    $('#PricePanel').find(':checkbox').each(function() {
        if ($(this).is(':checked'))
        {
            count++;
        }
    });
    return count;
}




function removeSpecialChar()
{
    var str = '';
    //alert('removeSpecialChar()...');
    $('#RowListing').children().find('p').each(function() {
        if ($(this).hasClass('splchars'))
        {
            //alert('Title...'+$(this).html());
            str = $(this).html().replace(/�/g, '');
            $(this).html(str);
            //alert('After replace html='+$(this).html());
        }
    });
}


function removeSpecialCharResult()
{
    var str = '';
    //alert('removeSpecialCharResult()...');
    $('#RowListing').children().find('a').each(function() {
        if ($(this).hasClass('upper-title'))
        {
            //alert('Title...'+$(this).html());
            str = $(this).html().replace(/�/g, '');
            $(this).html(str);
            //alert('After replace html='+$(this).html());
        }
    });
}


function selectText()
{
    $('#urllink').select();
}


function changeDollarToCurrency()
{
    var currency = $("#currency option:selected").text();
    var currval = $("#currency option:selected").val();
    changeCurrencyRange('lowestspan', currval, currency);
    changeCurrencyRange('middlespan', currval, currency);
    changeCurrencyRange('highestspan', currval, currency);
}

function changeCurrencyRange(id, currval, currency)
{
    //alert('changeCurrencyRange() id='+id+' curval='+currval);
    var str = '';
    var retstr = '';
    var arr = '';
    var rowindex = 0;
    if (id == 'lowestspan')
    {
        rowindex = 0;
    } else if (id == 'middlespan')
    {
        rowindex = 1;
    } else
    {
        rowindex = 2;
    }
    str = makePriceRangeHtml(currency, rowindex);
    if (typeof str === 'undefined' || !str)
        return false;
    var arr = str.split(' ');
    //alert('arr.length='+arr.length);
    //alert('arr[0]='+arr[0]+'arr[1]='+arr[1]+'arr[2]='+arr[2]+'arr[3]='+arr[3]+'arr[4]='+arr[4]+'arr[5]='+arr[5]+'arr[6]='+arr[6]);

    if ($.trim(currval) != 'DEF')
    {
        for (i = 0; i < arr.length; i++)
        {
            var price = 0;
            if (id == 'lowestspan' && i == 1 && arr[i].replace(/,/g, '') < 1)
            {
                price = '1';
                var actval = calculateCurrency($.trim(currval), $.trim(price));
                actval = actval.toFixed(0);
                actval = formatMoney(actval, 0);
                //alert('If Part actval='+actval+' Price='+price+' Currval='+currval+' I='+i);
                if (actval < 1)
                {
                    actval = '1';
                }
                retstr += actval + ' ';
            }
            else if (i == 1 || i == 4 && arr[i].replace(/,/g, '') >= 1)
            {
                price = arr[i].replace(/,/g, '');
                var actval = calculateCurrency($.trim(currval), $.trim(price));
                actval = actval.toFixed(0);
                actval = formatMoney(actval, 0);
                //alert('Else If Part actval='+actval+' Price='+price+' Currval='+currval+' I='+i);
                if (actval < 1)
                {
                    actval = '1';
                }
                retstr += actval + ' ';
            }
            else
            {
                //alert('Else Part actval='+retstr+' I='+i);
                retstr += arr[i] + ' ';
            }
            //alert('arr['+i+']='+arr[i]) ;   
        }
    }
    else
    {
        retstr = str;
    }
    //alert('Return Str='+retstr);
    $('#' + id).html(retstr);
}

function makePriceRangeHtml(currency, rowindex)
{
    var retstr = '';
    var str = $('#hflRangeWithCount').val();
    //alert('makePriceRangeHtml() str='+str);
    if (typeof str === 'undefined' || !str)
        return false
    var arr = str.split('ROWSEP');
    //alert('makePriceRangeHtml() arr.length='+arr.length);
    retstr = currency + ' ' + arr[rowindex].replace('-', ' - ' + currency + ' ').replace('COLSEP', ' (') + ')';
    //alert('retstr='+retstr);
    return retstr;
}



function addCount()
{
    var str = $('#hflPRangeCnt').val();
    var arr = str.split(Rowsep);

    $('#lowestspan').html($('#lowestspan').html() + ' (' + arr[0].split(Colsep)[1] + ')');
    $('#middlespan').html($('#middlespan').html() + ' (' + arr[1].split(Colsep)[1] + ')');
    $('#highestspan').html($('#highestspan').html() + ' (' + arr[2].split(Colsep)[1] + ')');
}

function sendReplaceStr(arr, val)
{
    var str = '';
    var prevcurrency = $.trim($('#hflLastSelectedCurrency').val());
    //alert('Prev Currency='+prevcurrency+' val='+val);
    for (i = 0; i < arr.length; i++)
    {
        //if($.trim(arr[i]).toLowerCase()==prevcurrency.toLowerCase)
        //alert('arr['+i+']='+arr[i]+'hasInDD()='+hasInDD($.trim(arr[i]).toLowerCase()))
        if (hasInDD($.trim(arr[i]).toLowerCase()))
        {
            //lert('sendReplaceStr Inside If Condition val='+val+' arr['+i+']='+arr[i])
            //arr[i]=$.trim(val);
            //str+=$.trim(arr[i])+' ';
            str += $.trim(val) + ' ';
        }
        else
        {
            str += $.trim(arr[i]) + ' ';
        }
        //break;
    }
    str = $.trim(str);
    return str;
}

function hasInDD(text)
{
    var retval = false;
    $("#currency").each(function() {
        $('option', this).each(function() {
            //
            if ($.trim($(this).text()).toLowerCase() == text.toLowerCase()) {
                retval = true;
                //alert('Text Match retval='+retval+'This.text='+$.trim($(this).text()).toLowerCase()+' Text='+text.toLowerCase())
                //alert('Text Match retval='+retval);
            }
            ;
        });
    });
    return retval;
}

function setPreviousCurrency()
{
    //alert('setPreviousCurrency');
    var currency = $("#currency option:selected").text();
    $('#hflLastSelectedCurrency').val($.trim(currency));
    //alert('setPreviousCurrency() ='+$('#hflLastSelectedCurrency').val());
}


function currencyConvertor(selopt)
{
    //alert('I am general.js');
    //selopt=$.trim($('#currency option:selected').val());
    var row = '';
    var rows = '';
    var col = '';
    var cols = '';
    var colorgcur = '';
    var valstr = '';
    var htmlstr = '';
    var roworgcur = '';
    var roworgprice = '';
    var colorgprice = '';
    var str = $('#hflDefPrice').val();
    //alert('Default Price='+str);
    if (typeof str === 'undefined')
        return false;
    row = str.split(Rowsep);

    var prstr = $('#hflNewOrgPrice').val();
    roworgprice = prstr.split(Rowsep);


    var strorgcur = $('#hflOrgCurrency').val();
    roworgcur = strorgcur.split(Rowsep);

    var ddtxt = $('#currency option:selected').text();

    for (i = 0; i < row.length; i++)
    {
        col = row[i].split(Colsep);
        colorgcur = (typeof roworgcur[i] !== 'undefined') ? roworgcur[i].split(Colsep) : false;

        if (!colorgcur)
            continue;

        sp_price = col[0].replace('paraprice_', 'spprice_');

        colorgprice = (typeof roworgprice[i] !== 'undefined') ? roworgprice[i].split(Colsep) : false;
        if (!colorgprice)
            continue;

        var orgval = retDDValByText($.trim(colorgcur[1]));
        if ($.trim(selopt) == 'DEF')
        {
            var neworgprice = colorgprice[1].replace(/,/g, '');
            neworgprice = formatMoney(colorgprice[1], 0);
            //alert('Inside DEF');
            var price = col[1].replace('$', '');
            if (price < 1)
            {
                price = '1';
            }
            price = price.replace(/,/g, '');
            //alert('Price='+price);
            htmlstr = formatMoney(price, 0);
            if (ddtxt == $.trim(colorgcur[1]))
            {
                //alert('Inside DEF IF Part ddtxt'+ddtxt+' orgcur='+$.trim(colorgcur[1]))
                //$('#' + col[0]).html(' USD ' + htmlstr);
                $('#' + sp_price).hide();
            }
            else
            {
                //alert('Inside DEF ELSE Part ddtxt'+ddtxt+' orgcur='+$.trim(colorgcur[1]))
                var actvalsec = calculateCurrency($.trim(orgval), $.trim(price));
                actvalsec = actvalsec.toFixed(0);
                actvalsec = formatMoney(actvalsec, 0);
                //htmlstr += ' (' + $.trim(colorgcur[1]) + ' ' + actvalsec + ')';
                //htmlstr += ' ('+$.trim(colorgcur[1])+' '+neworgprice+')'

                $('#' + col[0]).html(' USD ' + htmlstr);
                $('#' + sp_price).show();
            }
        }
        else
        {
            var neworgprice = colorgprice[1].replace(/,/g, '');
            neworgprice = formatMoney(colorgprice[1], 0);
            //alert('Else PArt...');
            var price1 = col[1].replace('$', '');
            price1 = price1.replace(/,/g, '');
            var secondstr = '';
            if (price1 < 1)
            {
                price1 = '1';
            }

            var val = $.trim(selopt);
            //alert('Sahi Price1='+price1);
            var actval = calculateCurrency($.trim(val), $.trim(price1));
            //alert('Before actval='+actval+' val='+val+' Price1='+price1);
            actval = actval.toFixed(0);
            actval = formatMoney(actval, 0);
            //alert('Before actval='+actval+' val='+val+' Price1='+price1);
            if (actval < 1)
            {
                actval = '1';
            }
            if ($.trim(colorgcur[1]) == 'USD')
            {
                //alert('Inside NOT   DEF IF Part ddtxt'+ddtxt+' orgcur='+$.trim(colorgcur[1]))
                //secondstr = ' (USD ' + formatMoney(price1, 0) + ')';
                $('#' + sp_price).show();
                // alert('Inside Else----------> If Part secondstr='+secondstr);
            }
            else
            {
                //alert('Inside NOT   DEF Else Part ddtxt'+ddtxt+' orgcur='+$.trim(colorgcur[1]))
                var actvalsec = calculateCurrency($.trim(orgval), $.trim(price1));
                //alert('Befoe actvalsec='+actvalsec);
                actvalsec = actvalsec.toFixed(0);
                actvalsec = formatMoney(actvalsec, 0);
                // alert('After actvalsec='+actvalsec);
                if (ddtxt == $.trim(colorgcur[1]))
                {
                    secondstr = '';
                    $('#' + sp_price).hide();
                }
                else
                {
                    //secondstr = ' (' + $.trim(colorgcur[1]) + ' ' + actvalsec + ')';
                    //secondstr = ' (' + $.trim(colorgcur[1]) + ' ' + neworgprice + ')';
                    $('#' + sp_price).show();

                }
                //alert('Inside Else------> Else Part secondstr='+secondstr);
            }
            htmlstr = ' ' + ddtxt + ' ' + actval + secondstr;
            //htmlstr= ' '+ddtxt+' '+ actval +' (USD '+price1+')';
            $('#' + col[0]).html(htmlstr);
        }
    }
}

function setHflPriceRange(retstr)
{
    if (typeof retstr === 'undefined')
        return false;
    retstr = retstr.replace(/SEPCOL/g, 'COLSEP');
    retstr = retstr.replace(/SEPROW/g, 'ROWSEP');
    $('#hflRangeWithCount').val(retstr);
    //alert('Now hflRangeWithCount='+$('#hflRangeWithCount').val());
}

function convertSearchPrice()
{
    var currval = $("#currency option:selected").val();
    if (currval == 'DEF')
    {
        $('#hflSearchPrice').val('');
    }
    else
    {
        $('#hflSearchPrice').val(currval);
    }
}

function hidePriceRange(totalrec)
{
    if (totalrec == '1' || totalrec == 'No')
    {
        $('#PricePanel').hide();
    }
    else
    {
        $('#PricePanel').show();
    }
}


function loadOriginalPrice()
{
    var str = '';
    $('span[id^="originalprice_"]').each(function() {
        //alert('ID='+$(this).attr('id')+' Html='+$(this).html());
        str = str + $(this).attr('id') + Colsep + $(this).html() + Rowsep;
    });
    str = str.substring(0, str.lastIndexOf(Rowsep));
    $('#hflNewOrgPrice').val($.trim(str));
    //alert('hflDefPrice='+$('#hflDefPrice').val());
}

function submitPID(pid)
{
    $('#prodid').val(pid);
    //alert('Pid='+$('#prodid').val());
    $("#pidform").submit();
    //alert('submittingg....');
}

$(document).ready(function() {
    $(document).on('click', '.select_all', function() {
        var checked = $(this).is(':checked');
        if (checked) {
            $('#RowListing').find('input:checkbox').each(function() {
                $(this).prop('checked', true);
            });
        } else {
            $('#RowListing').find('input:checkbox').each(function() {
                $(this).prop('checked', false);
            });
        }
    })
    
    $('ul.nav li.dropdown').hover(function () {
        $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
    }, function () {
        $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(100);
    });
});

/*
 function OldcurrencyConvertor(selopt)
 {
 //alert('I am general.js');
 //selopt=$.trim($('#currency option:selected').val());
 var row = '';
 var rows = '';
 var col = '';
 var cols = '';
 var colorgcur = '';
 var valstr = '';
 var htmlstr = '';
 var roworgcur = '';
 var roworgprice = '';
 var colorgprice = '';
 var str = $('#hflDefPrice').val();
 //alert('Default Price='+str);
 row = str.split(Rowsep);
 
 var prstr=$('#hflNewOrgPrice').val();
 roworgprice=prstr.split(Rowsep);
 
 
 var strorgcur = $('#hflOrgCurrency').val();
 roworgcur = strorgcur.split(Rowsep);
 
 var ddtxt = $('#currency option:selected').text();
 
 for (i = 0; i < row.length; i++)
 {
 col = row[i].split(Colsep);
 colorgcur = (typeof roworgcur[i] !== 'undefined') ? roworgcur[i].split(Colsep) : false;
 
 if (!colorgcur)
 continue;
 
 colorgprice = (typeof roworgprice[i] !== 'undefined') ? roworgprice[i].split(Colsep) : false;
 if (!colorgprice)
 continue;
 
 var orgval = retDDValByText($.trim(colorgcur[1]));
 if ($.trim(selopt) == 'DEF')
 {
 alert('Inside DEF');
 var price = col[1].replace('$', '');
 if (price < 1)
 {
 price = '1';
 }
 price = price.replace(/,/g, '');
 //alert('Price='+price);
 htmlstr = formatMoney(price, 0);
 if (ddtxt == $.trim(colorgcur[1]))
 {
 alert('Inside DEF IF Part ddtxt'+ddtxt+' orgcur='+$.trim(colorgcur[1]))
 $('#' + col[0]).html(' USD ' + htmlstr);
 }
 else
 {
 alert('Inside DEF ELSE Part ddtxt'+ddtxt+' orgcur='+$.trim(colorgcur[1]))
 var actvalsec = calculateCurrency($.trim(orgval), $.trim(price));
 actvalsec = actvalsec.toFixed(0);
 actvalsec = formatMoney(actvalsec, 0);
 htmlstr += ' (' + $.trim(colorgcur[1]) + ' ' + actvalsec + ')';
 $('#' + col[0]).html(' USD ' + htmlstr);
 }
 }
 else
 {
 //alert('Else PArt...');
 var price1 = col[1].replace('$', '');
 price1 = price1.replace(/,/g, '');
 var secondstr = '';
 if (price1 < 1)
 {
 price1 = '1';
 }
 
 var val = $.trim(selopt);
 //alert('Sahi Price1='+price1);
 var actval = calculateCurrency($.trim(val), $.trim(price1));
 //alert('Before actval='+actval+' val='+val+' Price1='+price1);
 actval = actval.toFixed(0);
 actval = formatMoney(actval, 0);
 //alert('Before actval='+actval+' val='+val+' Price1='+price1);
 if (actval < 1)
 {
 actval = '1';
 }
 if ($.trim(colorgcur[1]) == 'USD')
 {
 secondstr = ' (USD ' + formatMoney(price1, 0) + ')';
 // alert('Inside Else----------> If Part secondstr='+secondstr);
 }
 else
 {
 var actvalsec = calculateCurrency($.trim(orgval), $.trim(price1));
 //alert('Befoe actvalsec='+actvalsec);
 actvalsec = actvalsec.toFixed(0);
 actvalsec = formatMoney(actvalsec, 0);
 // alert('After actvalsec='+actvalsec);
 if (ddtxt == $.trim(colorgcur[1]))
 {
 secondstr = '';
 }
 else
 {
 secondstr = ' (' + $.trim(colorgcur[1]) + ' ' + actvalsec + ')';
 }
 //alert('Inside Else------> Else Part secondstr='+secondstr);
 }
 htmlstr = ' ' + ddtxt + ' ' + actval + secondstr;
 //htmlstr= ' '+ddtxt+' '+ actval +' (USD '+price1+')';
 $('#' + col[0]).html(htmlstr);
 }
 }
 }*/

function closeSidebarMenu() {
    document.getElementById('closeSidebar').click();
}