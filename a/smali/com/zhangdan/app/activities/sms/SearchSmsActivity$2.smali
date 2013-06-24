.class Lcom/zhangdan/app/activities/sms/SearchSmsActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "SearchSmsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/sms/SearchSmsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "scan_process"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 143
    const-string v3, "sum_num"

    invoke-virtual {p2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 144
    .local v0, num:I
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    iget-object v4, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mSmsNum:I
    invoke-static {v4}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->access$000(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)I

    move-result v4

    add-int/2addr v4, v0

    #setter for: Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mSmsNum:I
    invoke-static {v3, v4}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->access$002(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;I)I

    .line 145
    const-string v3, "sms_phone_number"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, phone:Ljava/lang/String;
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mSearchSmsAdapter:Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;
    invoke-static {v3}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->access$100(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mSearchSmsAdapter:Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;
    invoke-static {v3}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->access$100(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6b63\u5728\u89e3\u6790  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u7684\u77ed\u4fe1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;->add(Ljava/lang/StringBuffer;)V

    .line 149
    :cond_0
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zhangdan/app/sms/ParseSms;->getSmsUserBankCount(Landroid/content/Context;)I

    move-result v2

    .line 150
    .local v2, sum:I
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mTextViewSum:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->access$300(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u53d1\u73b0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u5f20\u4fe1\u7528\u5361"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->getSpeical(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    invoke-static {v4, v5, v6}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->access$200(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mTextViewNum:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->access$400(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1.  \u5bfc\u5165\u94f6\u884c\u77ed\u4fe1("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mSmsNum:I
    invoke-static {v5}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->access$000(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    .end local v0           #num:I
    .end local v1           #phone:Ljava/lang/String;
    .end local v2           #sum:I
    :cond_1
    :goto_0
    return-void

    .line 152
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "scan_start"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 153
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v3}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->access$500(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 154
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mImageViewComplete:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->access$600(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mTextViewNum:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->access$400(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "1.  \u5bfc\u5165\u94f6\u884c\u77ed\u4fe1(0)"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mSearchSmsAdapter:Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;
    invoke-static {v3}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->access$100(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 157
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mSearchSmsAdapter:Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;
    invoke-static {v3}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->access$100(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "\u6b63\u5728\u8fc7\u6ee4\u77ed\u4fe1"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;->add(Ljava/lang/StringBuffer;)V

    goto :goto_0

    .line 159
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "scan_finish"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zhangdan/app/sms/ParseSms;->getSmsUserBankCount(Landroid/content/Context;)I

    move-result v2

    .line 161
    .restart local v2       #sum:I
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mTextViewSum:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->access$300(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u53d1\u73b0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u5f20\u4fe1\u7528\u5361"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->getSpeical(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    invoke-static {v4, v5, v6}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->access$200(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v3}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->access$500(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 163
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mImageViewComplete:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->access$600(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mSearchSmsAdapter:Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;
    invoke-static {v3}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->access$100(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 165
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mSearchSmsAdapter:Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;
    invoke-static {v3}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->access$100(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mEnd:Ljava/lang/String;
    invoke-static {v5}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->access$700(Lcom/zhangdan/app/activities/sms/SearchSmsActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$SearchSmsAdapter;->add(Ljava/lang/StringBuffer;)V

    .line 167
    :cond_4
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/SearchSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SearchSmsActivity;

    iget-object v3, v3, Lcom/zhangdan/app/activities/sms/SearchSmsActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method
