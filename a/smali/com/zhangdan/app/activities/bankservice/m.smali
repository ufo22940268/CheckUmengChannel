.class public final Lcom/zhangdan/app/activities/bankservice/m;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f0c005a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/bankservice/m;->setCanceledOnTouchOutside(Z)V

    iput-object p2, p0, Lcom/zhangdan/app/activities/bankservice/m;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/zhangdan/app/activities/bankservice/m;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/m;->dismiss()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/m;->b:Ljava/lang/String;

    sget-object v1, Lcom/zhangdan/app/data/d;->e:Lcom/zhangdan/app/data/d;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/d;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/bankservice/m;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/m;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/m;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/m;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/zhangdan/app/activities/bankservice/m;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/zhangdan/app/h/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030065

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/bankservice/m;->setContentView(I)V

    const v0, 0x7f06016b

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/bankservice/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/m;->a:Landroid/widget/EditText;

    const v0, 0x7f06016c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/bankservice/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMM"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/m;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
