.class public final Lcom/zhangdan/app/h/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/text/SimpleDateFormat;

.field public static final b:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zhangdan/app/h/g;->a:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zhangdan/app/h/g;->b:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "\u5468\u4e00"

    goto :goto_0

    :pswitch_1
    const-string v0, "\u5468\u4e8c"

    goto :goto_0

    :pswitch_2
    const-string v0, "\u5468\u4e09"

    goto :goto_0

    :pswitch_3
    const-string v0, "\u5468\u56db"

    goto :goto_0

    :pswitch_4
    const-string v0, "\u5468\u4e94"

    goto :goto_0

    :pswitch_5
    const-string v0, "\u5468\u516d"

    goto :goto_0

    :pswitch_6
    const-string v0, "\u5468\u65e5"

    goto :goto_0

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

.method public static a(JJ)Ljava/lang/String;
    .locals 7

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sub-long v0, p0, p2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-wide/32 v3, 0x5265c00

    div-long v3, v0, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\u5929"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-wide/32 v5, 0x5265c00

    mul-long/2addr v3, v5

    sub-long/2addr v0, v3

    const-wide/32 v3, 0x36ee80

    div-long v3, v0, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\u5c0f\u65f6"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-wide/32 v5, 0x36ee80

    mul-long/2addr v3, v5

    sub-long/2addr v0, v3

    const-wide/32 v3, 0xea60

    div-long/2addr v0, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\u5206\u949f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\u5206\u949f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static a(JLjava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)[I
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    aput v0, v1, v5

    return-object v1
.end method

.method public static b(J)I
    .locals 3

    const/4 v0, 0x7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method
