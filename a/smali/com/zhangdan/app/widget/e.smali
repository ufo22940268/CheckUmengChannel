.class final Lcom/zhangdan/app/widget/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/widget/EmailEditText;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/widget/EmailEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/widget/e;->a:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/widget/e;->a:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/EmailEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@qq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zhangdan/app/widget/e;->a:Lcom/zhangdan/app/widget/EmailEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ".com"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/widget/EmailEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/e;->a:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-static {v0}, Lcom/zhangdan/app/widget/EmailEditText;->a(Lcom/zhangdan/app/widget/EmailEditText;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "@16"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zhangdan/app/widget/e;->a:Lcom/zhangdan/app/widget/EmailEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "3.com"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/widget/EmailEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/e;->a:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-static {v0}, Lcom/zhangdan/app/widget/EmailEditText;->a(Lcom/zhangdan/app/widget/EmailEditText;)V

    goto :goto_0

    :cond_2
    const-string v1, "@12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zhangdan/app/widget/e;->a:Lcom/zhangdan/app/widget/EmailEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "6.com"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/widget/EmailEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/e;->a:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-static {v0}, Lcom/zhangdan/app/widget/EmailEditText;->a(Lcom/zhangdan/app/widget/EmailEditText;)V

    goto :goto_0

    :cond_3
    const-string v1, "@gm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/zhangdan/app/widget/e;->a:Lcom/zhangdan/app/widget/EmailEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "ail.com"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/widget/EmailEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/e;->a:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-static {v0}, Lcom/zhangdan/app/widget/EmailEditText;->a(Lcom/zhangdan/app/widget/EmailEditText;)V

    goto :goto_0

    :cond_4
    const-string v1, "@13"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/zhangdan/app/widget/e;->a:Lcom/zhangdan/app/widget/EmailEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "9.com"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/widget/EmailEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/e;->a:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-static {v0}, Lcom/zhangdan/app/widget/EmailEditText;->a(Lcom/zhangdan/app/widget/EmailEditText;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "@ho"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/zhangdan/app/widget/e;->a:Lcom/zhangdan/app/widget/EmailEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "tmail.com"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/widget/EmailEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/e;->a:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-static {v0}, Lcom/zhangdan/app/widget/EmailEditText;->a(Lcom/zhangdan/app/widget/EmailEditText;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "@si"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/zhangdan/app/widget/e;->a:Lcom/zhangdan/app/widget/EmailEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "na.com"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/widget/EmailEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/e;->a:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-static {v0}, Lcom/zhangdan/app/widget/EmailEditText;->a(Lcom/zhangdan/app/widget/EmailEditText;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "@vi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/zhangdan/app/widget/e;->a:Lcom/zhangdan/app/widget/EmailEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "p.qq.com"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/widget/EmailEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/e;->a:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-static {v0}, Lcom/zhangdan/app/widget/EmailEditText;->a(Lcom/zhangdan/app/widget/EmailEditText;)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "@ya"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/widget/e;->a:Lcom/zhangdan/app/widget/EmailEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "hoo.com.cn"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/widget/EmailEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/e;->a:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-static {v0}, Lcom/zhangdan/app/widget/EmailEditText;->a(Lcom/zhangdan/app/widget/EmailEditText;)V

    goto/16 :goto_0
.end method
