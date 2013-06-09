.class public Lcom/zhangdan/app/activities/setting/LockActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhangdan/app/widget/i;


# instance fields
.field private c:Lcom/zhangdan/app/widget/LockView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Lcom/zhangdan/app/activities/setting/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    iput v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->f:I

    iput v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->g:I

    new-instance v0, Lcom/zhangdan/app/activities/setting/g;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/setting/g;-><init>(Lcom/zhangdan/app/activities/setting/LockActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->i:Lcom/zhangdan/app/activities/setting/g;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/setting/LockActivity;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zhangdan.app.log_off"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/setting/LockActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/setting/LockActivity;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->f:I

    return v0
.end method

.method private static b(Ljava/util/List;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/setting/LockActivity;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->g:I

    return v0
.end method

.method static synthetic d(Lcom/zhangdan/app/activities/setting/LockActivity;)Lcom/zhangdan/app/widget/LockView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->c:Lcom/zhangdan/app/widget/LockView;

    return-object v0
.end method

.method static synthetic e(Lcom/zhangdan/app/activities/setting/LockActivity;)Lcom/zhangdan/app/activities/setting/g;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->i:Lcom/zhangdan/app/activities/setting/g;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 7

    const-wide/16 v5, 0x1f4

    const/4 v4, 0x4

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->f:I

    if-nez v0, :cond_5

    iget v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->g:I

    if-nez v0, :cond_3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->d:Landroid/widget/TextView;

    const-string v1, "\u5bc6\u7801\u592a\u77ed\uff0c\u6700\u5c114\u4f4d\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\uff01"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {p1}, Lcom/zhangdan/app/activities/setting/LockActivity;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->d:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u518d\u6b21\u7ed8\u5236\u52a0\u5bc6\u56fe\u6848"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->g:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->g:I

    if-ne v0, v2, :cond_1

    invoke-static {p1}, Lcom/zhangdan/app/activities/setting/LockActivity;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->d:Landroid/widget/TextView;

    const-string v1, "\u4e0e\u4e0a\u6b21\u7ed8\u5236\u4e0d\u4e00\u81f4\uff0c\u8bf7\u91cd\u65b0\u7ed8\u5236\uff01"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->g:I

    const-string v0, "\u5bc6\u7801\u8bbe\u7f6e\u6210\u529f"

    invoke-static {p0, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->h:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/zhangdan/app/data/a/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->c:Lcom/zhangdan/app/widget/LockView;

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/widget/LockView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->i:Lcom/zhangdan/app/activities/setting/g;

    invoke-virtual {v0, v2, v5, v6}, Lcom/zhangdan/app/activities/setting/g;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->f:I

    if-ne v0, v2, :cond_7

    iget v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->g:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/zhangdan/app/activities/setting/LockActivity;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/zhangdan/app/data/a/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->d:Landroid/widget/TextView;

    const-string v1, "\u52a0\u5bc6\u56fe\u6848\u7ed8\u5236\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u7ed8\u5236\uff01"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/setting/LockActivity;->finish()V

    const v0, 0x7f040005

    const v1, 0x7f040006

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/activities/setting/LockActivity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->f:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->g:I

    if-nez v0, :cond_9

    invoke-static {p1}, Lcom/zhangdan/app/activities/setting/LockActivity;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/zhangdan/app/data/a/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->d:Landroid/widget/TextView;

    const-string v1, "\u539f\u52a0\u5bc6\u56fe\u6848\u7ed8\u5236\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u7ed8\u5236\uff01"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    const v0, 0x7f0600cc

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/setting/LockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "\u6e05\u9664\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->g:I

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->d:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u7ed8\u5236\u65b0\u52a0\u5bc6\u56fe\u6848"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->e:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->g:I

    if-ne v0, v2, :cond_c

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->d:Landroid/widget/TextView;

    const-string v1, "\u5bc6\u7801\u592a\u77ed\uff0c\u6700\u5c114\u4f4d\uff0c\u8bf7\u91cd\u65b0\u7ed8\u5236\uff01"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_b
    invoke-static {p1}, Lcom/zhangdan/app/activities/setting/LockActivity;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->d:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u518d\u6b21\u7ed8\u5236\u52a0\u5bc6\u56fe\u6848"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->g:I

    goto/16 :goto_0

    :cond_c
    iget v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->g:I

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lcom/zhangdan/app/activities/setting/LockActivity;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->d:Landroid/widget/TextView;

    const-string v1, "\u4e0e\u4e0a\u6b21\u7ed8\u5236\u4e0d\u4e00\u81f4\uff0c\u8bf7\u91cd\u65b0\u7ed8\u5236\uff01"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_d
    iget v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->g:I

    const-string v0, "\u65b0\u5bc6\u7801\u8bbe\u7f6e\u6210\u529f"

    invoke-static {p0, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->h:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/zhangdan/app/data/a/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->c:Lcom/zhangdan/app/widget/LockView;

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/widget/LockView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->i:Lcom/zhangdan/app/activities/setting/g;

    invoke-virtual {v0, v2, v5, v6}, Lcom/zhangdan/app/activities/setting/g;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method protected final f()V
    .locals 0

    return-void
.end method

.method protected final g()V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/activities/setting/LockActivity;->showDialog(ILandroid/os/Bundle;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/setting/LockActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060039

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/setting/LockActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0600cc

    if-ne v0, v1, :cond_0

    const/16 v0, 0x65

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/activities/setting/LockActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const v5, 0x7f0601da

    const v2, 0x7f06003c

    const v4, 0x7f060039

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/setting/LockActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/setting/LockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "set_pwd"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->f:I

    if-eqz p1, :cond_0

    const-string v0, "set_pwd_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->f:I

    :cond_0
    const v0, 0x7f0600c9

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/setting/LockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/widget/LockView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->c:Lcom/zhangdan/app/widget/LockView;

    const v0, 0x7f0600ca

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/setting/LockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0600cb

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/setting/LockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/setting/LockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f02038c

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f02000a

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f08016d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0600cc

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/setting/LockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->c:Lcom/zhangdan/app/widget/LockView;

    invoke-virtual {v1, p0}, Lcom/zhangdan/app/widget/LockView;->a(Lcom/zhangdan/app/widget/i;)V

    iget v1, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->f:I

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->d:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u7ed8\u5236\u52a0\u5bc6\u56fe\u6848"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/setting/LockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->f:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/setting/LockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->d:Landroid/widget/TextView;

    const-string v2, "\u8bf7\u7ed8\u5236\u52a0\u5bc6\u56fe\u6848"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "\u5fd8\u8bb0\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->f:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/setting/LockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->d:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u7ed8\u5236\u539f\u52a0\u5bc6\u56fe\u6848"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->e:Landroid/widget/TextView;

    const-string v1, "\u539f\u52a0\u5bc6\u56fe\u6848\u7ed8\u5236\u6b63\u786e\u540e\uff0c\u60a8\u53ef\u4ee5\u9009\u62e9\u5173\u95ed\u5bc6\u7801\u9501"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    const v6, 0x7f080020

    const v5, 0x7f08001f

    const/4 v4, 0x2

    const v3, 0x7f0a0024

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/zhangdan/app/widget/a;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/widget/a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080159

    invoke-virtual {v0, v1, v3}, Lcom/zhangdan/app/widget/a;->a(II)V

    new-instance v1, Lcom/zhangdan/app/activities/setting/c;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/setting/c;-><init>(Lcom/zhangdan/app/activities/setting/LockActivity;)V

    new-instance v2, Lcom/zhangdan/app/activities/setting/d;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/setting/d;-><init>(Lcom/zhangdan/app/activities/setting/LockActivity;)V

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/zhangdan/app/widget/a;->a(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_4

    new-instance v0, Lcom/zhangdan/app/widget/a;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/widget/a;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->f:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->f:I

    if-ne v1, v4, :cond_3

    iget v1, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->g:I

    if-nez v1, :cond_3

    :cond_1
    const v1, 0x7f08015a

    invoke-virtual {v0, v1, v3}, Lcom/zhangdan/app/widget/a;->a(II)V

    :cond_2
    :goto_1
    new-instance v1, Lcom/zhangdan/app/activities/setting/e;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/setting/e;-><init>(Lcom/zhangdan/app/activities/setting/LockActivity;)V

    new-instance v2, Lcom/zhangdan/app/activities/setting/f;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/setting/f;-><init>(Lcom/zhangdan/app/activities/setting/LockActivity;)V

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/zhangdan/app/widget/a;->a(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->f:I

    if-ne v1, v4, :cond_2

    const v1, 0x7f08015b

    invoke-virtual {v0, v1, v3}, Lcom/zhangdan/app/widget/a;->a(II)V

    goto :goto_1

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "set_pwd_type"

    iget v1, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
