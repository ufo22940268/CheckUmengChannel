.class public Lcom/zhangdan/app/util/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final sdf:Ljava/text/SimpleDateFormat;

.field public static final sdf2:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zhangdan/app/util/DateUtils;->sdf:Ljava/text/SimpleDateFormat;

    .line 19
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zhangdan/app/util/DateUtils;->sdf2:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calDaysBetweenTwoTime(JJ)I
    .locals 6
    .parameter "t1"
    .parameter "t2"

    .prologue
    .line 139
    cmp-long v4, p0, p2

    if-gez v4, :cond_0

    .line 140
    const/4 v1, 0x0

    .line 144
    :goto_0
    return v1

    .line 141
    :cond_0
    const v0, 0x5265c00

    .line 142
    .local v0, d:I
    sub-long v2, p0, p2

    .line 143
    .local v2, time:J
    int-to-long v4, v0

    div-long v4, v2, v4

    long-to-int v1, v4

    .line 144
    .local v1, days:I
    goto :goto_0
.end method

.method public static calInterval(JJ)Ljava/lang/String;
    .locals 12
    .parameter "t1"
    .parameter "t2"

    .prologue
    const-wide/16 v10, 0x0

    .line 90
    cmp-long v8, p0, p2

    if-gez v8, :cond_0

    .line 91
    const-string v8, ""

    .line 111
    :goto_0
    return-object v8

    .line 92
    :cond_0
    sub-long v6, p0, p2

    .line 93
    .local v6, time:J
    const v0, 0x5265c00

    .line 94
    .local v0, d:I
    const v1, 0x36ee80

    .line 95
    .local v1, h:I
    const v4, 0xea60

    .line 97
    .local v4, m:I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    .local v5, sb:Ljava/lang/StringBuffer;
    int-to-long v8, v0

    div-long v2, v6, v8

    .line 99
    .local v2, i:J
    cmp-long v8, v2, v10

    if-lez v8, :cond_1

    .line 100
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\u5929"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    :cond_1
    int-to-long v8, v0

    mul-long/2addr v8, v2

    sub-long/2addr v6, v8

    .line 102
    int-to-long v8, v1

    div-long v2, v6, v8

    .line 103
    cmp-long v8, v2, v10

    if-lez v8, :cond_2

    .line 104
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\u5c0f\u65f6"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    :cond_2
    int-to-long v8, v1

    mul-long/2addr v8, v2

    sub-long/2addr v6, v8

    .line 106
    int-to-long v8, v4

    div-long v2, v6, v8

    .line 107
    cmp-long v8, v2, v10

    if-lez v8, :cond_3

    .line 108
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\u5206\u949f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 110
    :cond_3
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\u5206\u949f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static calWeekDay(J)I
    .locals 3
    .parameter "time"

    .prologue
    .line 121
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 122
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 123
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 124
    .local v1, d:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 125
    const/4 v1, 0x7

    .line 128
    :goto_0
    return v1

    .line 127
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static calcInterval(IIIIII)I
    .locals 12
    .parameter "y1"
    .parameter "m1"
    .parameter "d1"
    .parameter "y2"
    .parameter "m2"
    .parameter "d2"

    .prologue
    .line 51
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 52
    .local v0, cal:Ljava/util/Calendar;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 53
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 54
    .local v8, t1:J
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 55
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 56
    .local v10, t2:J
    sub-long v1, v10, v8

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    long-to-int v7, v1

    .line 57
    .local v7, interval:I
    return v7
.end method

.method public static convertDateStrToTime(Ljava/lang/String;)J
    .locals 6
    .parameter "dateStr"

    .prologue
    .line 154
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 156
    .local v3, sdf:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 157
    .local v1, d:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 158
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 159
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 163
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v1           #d:Ljava/util/Date;
    :goto_0
    return-wide v4

    .line 160
    :catch_0
    move-exception v2

    .line 161
    .local v2, e:Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 163
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public static formatDate(JLjava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 2
    .parameter "time"
    .parameter "sdf"

    .prologue
    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 62
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 63
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getWeekStr(I)Ljava/lang/String;
    .locals 1
    .parameter "day"

    .prologue
    .line 167
    packed-switch p0, :pswitch_data_0

    .line 183
    const-string v0, ""

    :goto_0
    return-object v0

    .line 169
    :pswitch_0
    const-string v0, "\u5468\u4e00"

    goto :goto_0

    .line 171
    :pswitch_1
    const-string v0, "\u5468\u4e8c"

    goto :goto_0

    .line 173
    :pswitch_2
    const-string v0, "\u5468\u4e09"

    goto :goto_0

    .line 175
    :pswitch_3
    const-string v0, "\u5468\u56db"

    goto :goto_0

    .line 177
    :pswitch_4
    const-string v0, "\u5468\u4e94"

    goto :goto_0

    .line 179
    :pswitch_5
    const-string v0, "\u5468\u516d"

    goto :goto_0

    .line 181
    :pswitch_6
    const-string v0, "\u5468\u65e5"

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static getYearMonthDay(J)[I
    .locals 6
    .parameter "time"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 74
    .local v1, cal:Ljava/util/Calendar;
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 75
    const/4 v2, 0x3

    new-array v0, v2, [I

    .line 76
    .local v0, arr:[I
    const/4 v2, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v0, v2

    .line 77
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v4

    .line 78
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aput v2, v0, v5

    .line 79
    return-object v0
.end method

.method public static parseDateString(Ljava/lang/String;)J
    .locals 5
    .parameter "str"

    .prologue
    .line 29
    :try_start_0
    sget-object v3, Lcom/zhangdan/app/util/DateUtils;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 30
    .local v1, d:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 31
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 32
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 36
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v1           #d:Ljava/util/Date;
    :goto_0
    return-wide v3

    .line 33
    :catch_0
    move-exception v2

    .line 34
    .local v2, e:Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 36
    const-wide/16 v3, 0x0

    goto :goto_0
.end method
