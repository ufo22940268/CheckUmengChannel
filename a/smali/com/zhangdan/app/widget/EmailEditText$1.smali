.class Lcom/zhangdan/app/widget/EmailEditText$1;
.super Ljava/lang/Object;
.source "EmailEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/widget/EmailEditText;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/widget/EmailEditText;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/widget/EmailEditText;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/zhangdan/app/widget/EmailEditText$1;->this$0:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 81
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 76
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 38
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    if-nez p3, :cond_0

    .line 39
    iget-object v1, p0, Lcom/zhangdan/app/widget/EmailEditText$1;->this$0:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-virtual {v1}, Lcom/zhangdan/app/widget/EmailEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, str:Ljava/lang/String;
    const-string v1, "@qq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/zhangdan/app/widget/EmailEditText$1;->this$0:Lcom/zhangdan/app/widget/EmailEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/widget/EmailEditText;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v1, p0, Lcom/zhangdan/app/widget/EmailEditText$1;->this$0:Lcom/zhangdan/app/widget/EmailEditText;

    #calls: Lcom/zhangdan/app/widget/EmailEditText;->focusNextEditText()V
    invoke-static {v1}, Lcom/zhangdan/app/widget/EmailEditText;->access$000(Lcom/zhangdan/app/widget/EmailEditText;)V

    .line 70
    .end local v0           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 43
    .restart local v0       #str:Ljava/lang/String;
    :cond_1
    const-string v1, "@16"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    iget-object v1, p0, Lcom/zhangdan/app/widget/EmailEditText$1;->this$0:Lcom/zhangdan/app/widget/EmailEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "3.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/widget/EmailEditText;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v1, p0, Lcom/zhangdan/app/widget/EmailEditText$1;->this$0:Lcom/zhangdan/app/widget/EmailEditText;

    #calls: Lcom/zhangdan/app/widget/EmailEditText;->focusNextEditText()V
    invoke-static {v1}, Lcom/zhangdan/app/widget/EmailEditText;->access$000(Lcom/zhangdan/app/widget/EmailEditText;)V

    goto :goto_0

    .line 46
    :cond_2
    const-string v1, "@12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 47
    iget-object v1, p0, Lcom/zhangdan/app/widget/EmailEditText$1;->this$0:Lcom/zhangdan/app/widget/EmailEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "6.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/widget/EmailEditText;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, p0, Lcom/zhangdan/app/widget/EmailEditText$1;->this$0:Lcom/zhangdan/app/widget/EmailEditText;

    #calls: Lcom/zhangdan/app/widget/EmailEditText;->focusNextEditText()V
    invoke-static {v1}, Lcom/zhangdan/app/widget/EmailEditText;->access$000(Lcom/zhangdan/app/widget/EmailEditText;)V

    goto :goto_0

    .line 49
    :cond_3
    const-string v1, "@gm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 50
    iget-object v1, p0, Lcom/zhangdan/app/widget/EmailEditText$1;->this$0:Lcom/zhangdan/app/widget/EmailEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ail.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/widget/EmailEditText;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v1, p0, Lcom/zhangdan/app/widget/EmailEditText$1;->this$0:Lcom/zhangdan/app/widget/EmailEditText;

    #calls: Lcom/zhangdan/app/widget/EmailEditText;->focusNextEditText()V
    invoke-static {v1}, Lcom/zhangdan/app/widget/EmailEditText;->access$000(Lcom/zhangdan/app/widget/EmailEditText;)V

    goto :goto_0

    .line 52
    :cond_4
    const-string v1, "@13"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 53
    iget-object v1, p0, Lcom/zhangdan/app/widget/EmailEditText$1;->this$0:Lcom/zhangdan/app/widget/EmailEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "9.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/widget/EmailEditText;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v1, p0, Lcom/zhangdan/app/widget/EmailEditText$1;->this$0:Lcom/zhangdan/app/widget/EmailEditText;

    #calls: Lcom/zhangdan/app/widget/EmailEditText;->focusNextEditText()V
    invoke-static {v1}, Lcom/zhangdan/app/widget/EmailEditText;->access$000(Lcom/zhangdan/app/widget/EmailEditText;)V

    goto/16 :goto_0

    .line 55
    :cond_5
    const-string v1, "@ho"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 56
    iget-object v1, p0, Lcom/zhangdan/app/widget/EmailEditText$1;->this$0:Lcom/zhangdan/app/widget/EmailEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "tmail.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/widget/EmailEditText;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v1, p0, Lcom/zhangdan/app/widget/EmailEditText$1;->this$0:Lcom/zhangdan/app/widget/EmailEditText;

    #calls: Lcom/zhangdan/app/widget/EmailEditText;->focusNextEditText()V
    invoke-static {v1}, Lcom/zhangdan/app/widget/EmailEditText;->access$000(Lcom/zhangdan/app/widget/EmailEditText;)V

    goto/16 :goto_0

    .line 58
    :cond_6
    const-string v1, "@si"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 59
    iget-object v1, p0, Lcom/zhangdan/app/widget/EmailEditText$1;->this$0:Lcom/zhangdan/app/widget/EmailEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "na.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/widget/EmailEditText;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v1, p0, Lcom/zhangdan/app/widget/EmailEditText$1;->this$0:Lcom/zhangdan/app/widget/EmailEditText;

    #calls: Lcom/zhangdan/app/widget/EmailEditText;->focusNextEditText()V
    invoke-static {v1}, Lcom/zhangdan/app/widget/EmailEditText;->access$000(Lcom/zhangdan/app/widget/EmailEditText;)V

    goto/16 :goto_0

    .line 61
    :cond_7
    const-string v1, "@vi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 62
    iget-object v1, p0, Lcom/zhangdan/app/widget/EmailEditText$1;->this$0:Lcom/zhangdan/app/widget/EmailEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "p.qq.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/widget/EmailEditText;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v1, p0, Lcom/zhangdan/app/widget/EmailEditText$1;->this$0:Lcom/zhangdan/app/widget/EmailEditText;

    #calls: Lcom/zhangdan/app/widget/EmailEditText;->focusNextEditText()V
    invoke-static {v1}, Lcom/zhangdan/app/widget/EmailEditText;->access$000(Lcom/zhangdan/app/widget/EmailEditText;)V

    goto/16 :goto_0

    .line 64
    :cond_8
    const-string v1, "@ya"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/zhangdan/app/widget/EmailEditText$1;->this$0:Lcom/zhangdan/app/widget/EmailEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "hoo.com.cn"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/widget/EmailEditText;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p0, Lcom/zhangdan/app/widget/EmailEditText$1;->this$0:Lcom/zhangdan/app/widget/EmailEditText;

    #calls: Lcom/zhangdan/app/widget/EmailEditText;->focusNextEditText()V
    invoke-static {v1}, Lcom/zhangdan/app/widget/EmailEditText;->access$000(Lcom/zhangdan/app/widget/EmailEditText;)V

    goto/16 :goto_0
.end method
