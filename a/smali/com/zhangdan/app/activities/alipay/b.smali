.class final Lcom/zhangdan/app/activities/alipay/b;
.super Lcom/a/a/a/e/a/a;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

.field private b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/alipay/b;->a:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    invoke-direct {p0}, Lcom/a/a/a/e/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    const/4 v2, 0x2

    aget-object v2, p1, v2

    const/4 v3, 0x3

    aget-object v3, p1, v3

    const/4 v4, 0x4

    aget-object v4, p1, v4

    const/4 v5, 0x5

    aget-object v5, p1, v5

    const/4 v6, 0x6

    aget-object v6, p1, v6

    invoke-static/range {v0 .. v6}, Lcom/zhangdan/app/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/b;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 2

    invoke-super {p0}, Lcom/a/a/a/e/a/a;->a()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/b;->a:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    const-string v1, "\u6b63\u5728\u521b\u5efa\u652f\u4ed8\u8ba2\u5355\uff0c\u8bf7\u7a0d\u540e..."

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/alipay/b;->b:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/b;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Lcom/zhangdan/app/data/model/http/b;

    invoke-super {p0, p1}, Lcom/a/a/a/e/a/a;->a(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/b;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/b;->a:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/alipay/b;->a:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    const v2, 0x7f080022

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/b;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/b;->a()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Ljava/lang/String;

    const-string v2, "alipays://platformapi/startapp?appId=09999999&sourceId=51zhangdan&clientVersion=%1$s&outTradeNo=%2$s&cardTailNumber=%3$s&amount=%4$s&userName=%5$s&bankMark=%6$s&returnUrl=%7$s"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/b;->c()Lcom/zhangdan/app/data/model/http/a;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "en51ccm://startapp?appId=09999999&sourceId=alipay&tradeNo="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&billId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zhangdan/app/activities/alipay/b;->a:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    invoke-static {v4}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->a(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)Lcom/zhangdan/app/data/model/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/j;->d()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/zhangdan/app/h/a;->a([B)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "callback:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v4, "%1$s"

    const-string v5, "5.2.0.0307"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "%2$s"

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "%3$s"

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "%4$s"

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/a;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "%5$s"

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/a;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zhangdan/app/h/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "%6$s"

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%7$s"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/alipay/b;->a:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/b;->a:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
