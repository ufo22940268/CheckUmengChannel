.class final Lcom/zhangdan/app/activities/sms/m;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/m;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scan_process"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "sum_num"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/m;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->a(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->a(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;I)V

    const-string v0, "sms_phone_number"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/m;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->b(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Lcom/zhangdan/app/activities/sms/n;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/m;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->b(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Lcom/zhangdan/app/activities/sms/n;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6b63\u5728\u89e3\u6790  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u7684\u77ed\u4fe1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/sms/n;->a(Ljava/lang/StringBuffer;)V

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/m;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/sms/h;->a(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/m;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->c(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/m;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u53d1\u73b0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u5f20\u4fe1\u7528\u5361"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->a(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/m;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->d(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "1.  \u5bfc\u5165\u94f6\u884c\u77ed\u4fe1("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/m;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-static {v2}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->a(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scan_start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/m;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->e(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/m;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->f(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/m;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->d(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "1.  \u5bfc\u5165\u94f6\u884c\u77ed\u4fe1(0)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/m;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->b(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Lcom/zhangdan/app/activities/sms/n;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/m;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->b(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Lcom/zhangdan/app/activities/sms/n;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "\u6b63\u5728\u8fc7\u6ee4\u77ed\u4fe1"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/sms/n;->a(Ljava/lang/StringBuffer;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scan_finish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/m;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/sms/h;->a(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/m;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->c(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/m;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u53d1\u73b0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u5f20\u4fe1\u7528\u5361"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->a(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/m;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->e(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/m;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->f(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/m;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->b(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Lcom/zhangdan/app/activities/sms/n;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/m;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->b(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Lcom/zhangdan/app/activities/sms/n;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/m;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-static {v2}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->g(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/sms/n;->a(Ljava/lang/StringBuffer;)V

    :cond_4
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/m;->a:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method
