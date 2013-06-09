.class public final Lcom/zhangdan/app/activities/detail/p;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zhangdan/app/activities/detail/p;->a:Ljava/text/DecimalFormat;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    const-string v0, ""

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    aget-object v2, v1, v4

    if-eqz v2, :cond_0

    aget-object v0, v1, v4

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/zhangdan/app/data/model/j;)Ljava/util/List;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v4, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->e()I

    move-result v3

    invoke-static {p0, v3, v2, v0, v1}, Lcom/zhangdan/app/sms/d;->a(Landroid/content/Context;ILjava/lang/String;J)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    move-object v1, v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/List;
    .locals 10

    const/4 v3, 0x0

    invoke-static {p0, p1, p2, p3}, Lcom/zhangdan/app/data/db/b/j;->a(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/zhangdan/app/data/db/b/g;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_0

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    :cond_0
    return-object v6

    :cond_1
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/h;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sget-object v1, Lcom/zhangdan/app/activities/detail/p;->a:Ljava/text/DecimalFormat;

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/h;->f(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->g()I

    move-result v1

    invoke-static {v1}, Lcom/zhangdan/app/h/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/h;->j(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->i()I

    move-result v4

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->j()I

    move-result v1

    if-eqz v1, :cond_2

    move v4, v1

    :cond_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    move v5, v3

    :goto_2
    if-lt v5, v8, :cond_4

    move v1, v3

    :goto_3
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080112

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/h;->g(Ljava/lang/String;)V

    :cond_3
    invoke-static {v1}, Lcom/zhangdan/app/data/c;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/h;->g(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "0.00"

    goto :goto_1

    :cond_4
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/http/p;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/p;->a()I

    move-result v9

    if-ne v4, v9, :cond_5

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/p;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/h;->g(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/p;->b()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/p;->a()I

    move-result v1

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    :cond_6
    move v1, v4

    goto :goto_3
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "{"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "51zhangdan.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    if-eqz p1, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "email_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    move-object p1, v0

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "from"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "from"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
