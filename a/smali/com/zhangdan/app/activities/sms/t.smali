.class final Lcom/zhangdan/app/activities/sms/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/sms/SmsEditActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/sms/SmsEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/t;->a:Lcom/zhangdan/app/activities/sms/SmsEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    const/4 v2, 0x6

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-interface {p1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    add-int/lit8 v0, v1, 0x3

    add-int/lit8 v1, v1, 0x4

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method