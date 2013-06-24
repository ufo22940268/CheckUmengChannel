.class public Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;
.super Landroid/app/Dialog;
.source "SetReturnStateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog$OnReturnStateDialogClickListener;
    }
.end annotation


# instance fields
.field private mImgExpression:Landroid/widget/ImageView;

.field private mOnReturnStateDialogClickListener:Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog$OnReturnStateDialogClickListener;

.field private mTvReturnState:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7
    .parameter "context"
    .parameter "billState"

    .prologue
    const v6, 0x7f0900a7

    const/4 v5, 0x4

    .line 35
    const v4, 0x7f08005a

    invoke-direct {p0, p1, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 36
    const v4, 0x7f030065

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->setContentView(I)V

    .line 38
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->setCanceledOnTouchOutside(Z)V

    .line 39
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 40
    .local v3, window:Landroid/view/Window;
    const v4, 0x7f08005b

    invoke-virtual {v3, v4}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 41
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 42
    .local v2, params:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x50

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 44
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 46
    const v4, 0x7f0900aa

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->mImgExpression:Landroid/widget/ImageView;

    .line 47
    const v4, 0x7f0900ab

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->mTvReturnState:Landroid/widget/TextView;

    .line 49
    const v4, 0x7f0900a9

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v4, 0x7f0900a5

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {p0, v6}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    if-nez p2, :cond_1

    .line 54
    const v4, 0x7f09016b

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 55
    const v4, 0x7f0901dd

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    :goto_0
    const-string v4, "alipay"

    invoke-static {p1, v4}, Lcom/umeng/analytics/MobclickAgent;->getConfigParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, onlineConfigAlipay:Ljava/lang/String;
    const-string v4, "disabled"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    invoke-virtual {p0, v6}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 70
    const v4, 0x7f0900a8

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :cond_0
    return-void

    .line 56
    .end local v1           #onlineConfigAlipay:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x3

    if-ne p2, v4, :cond_2

    .line 57
    const v4, 0x7f090169

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto :goto_0

    .line 59
    :cond_2
    const v4, 0x7f09016a

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 61
    const v4, 0x7f0901df

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v4, 0x7f0901e0

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v4, 0x7f0901e1

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public changeReturnState(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "returnPartAmount"

    .prologue
    const/4 v1, 0x4

    .line 131
    if-nez p1, :cond_1

    .line 132
    const v0, 0x7f0202f1

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->setStateExpression(I)V

    .line 133
    const v0, 0x7f070093

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->setReturnState(I)V

    .line 147
    :cond_0
    :goto_0
    if-ne p1, v1, :cond_5

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->setReturnPartAmountVisible(I)V

    .line 149
    invoke-virtual {p0, p2}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->setReturnPartAmount(Ljava/lang/String;)V

    .line 153
    :goto_1
    return-void

    .line 134
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 135
    const v0, 0x7f0202f6

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->setStateExpression(I)V

    .line 136
    const v0, 0x7f070099

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->setReturnState(I)V

    goto :goto_0

    .line 137
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 138
    const v0, 0x7f0202fd

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->setStateExpression(I)V

    .line 139
    const v0, 0x7f070096

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->setReturnState(I)V

    goto :goto_0

    .line 140
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 141
    const v0, 0x7f0202f4

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->setStateExpression(I)V

    .line 142
    const v0, 0x7f070097

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->setReturnState(I)V

    goto :goto_0

    .line 143
    :cond_4
    if-ne p1, v1, :cond_0

    .line 144
    const v0, 0x7f020300

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->setStateExpression(I)V

    .line 145
    const v0, 0x7f070098

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->setReturnState(I)V

    goto :goto_0

    .line 151
    :cond_5
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->setReturnPartAmountVisible(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->mOnReturnStateDialogClickListener:Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog$OnReturnStateDialogClickListener;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->mOnReturnStateDialogClickListener:Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog$OnReturnStateDialogClickListener;

    invoke-interface {v0, p1}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog$OnReturnStateDialogClickListener;->onSetReturnStateClick(Landroid/view/View;)V

    .line 164
    :cond_0
    return-void
.end method

.method public setOnReturnStateDialogClickListener(Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog$OnReturnStateDialogClickListener;)V
    .locals 0
    .parameter "onReturnStateDialogClickListener"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->mOnReturnStateDialogClickListener:Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog$OnReturnStateDialogClickListener;

    .line 157
    return-void
.end method

.method public setReturnPartAmount(Ljava/lang/String;)V
    .locals 3
    .parameter "amount"

    .prologue
    .line 80
    const v1, 0x7f0901e2

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    .local v0, tvReturnAmount:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(\uffe5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setReturnPartAmountVisible(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 88
    const v1, 0x7f0901e2

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    .local v0, tvReturnAmount:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setReturnState(I)V
    .locals 1
    .parameter "returnStateStrResId"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->mTvReturnState:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->mTvReturnState:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 112
    :cond_0
    return-void
.end method

.method public setReturnState(Ljava/lang/String;)V
    .locals 1
    .parameter "returnStateStr"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->mTvReturnState:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->mTvReturnState:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_0
    return-void
.end method

.method public setStateExpression(I)V
    .locals 1
    .parameter "expressionIcon"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->mImgExpression:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/dialog/SetReturnStateDialog;->mImgExpression:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 102
    :cond_0
    return-void
.end method
