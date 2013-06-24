.class Lcom/zhangdan/app/activities/sms/SmsEditActivity$1;
.super Ljava/lang/Object;
.source "SmsEditActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/sms/SmsEditActivity;->showBottom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/sms/SmsEditActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/sms/SmsEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/SmsEditActivity$1;->this$0:Lcom/zhangdan/app/activities/sms/SmsEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "edt"

    .prologue
    const/4 v3, 0x6

    .line 259
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, temp:Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 261
    .local v0, posDot:I
    if-gtz v0, :cond_1

    .line 262
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 263
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {p1, v3, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 267
    add-int/lit8 v2, v0, 0x3

    add-int/lit8 v3, v0, 0x4

    invoke-interface {p1, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 255
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 250
    return-void
.end method
