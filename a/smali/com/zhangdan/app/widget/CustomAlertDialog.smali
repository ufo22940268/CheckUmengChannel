.class public Lcom/zhangdan/app/widget/CustomAlertDialog;
.super Landroid/app/Dialog;
.source "CustomAlertDialog.java"


# instance fields
.field private mButtonLeft:Landroid/widget/Button;

.field private mButtonRight:Landroid/widget/Button;

.field private mContent:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    const v0, 0x7f08005a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 24
    iput-object p1, p0, Lcom/zhangdan/app/widget/CustomAlertDialog;->mContext:Landroid/content/Context;

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 26
    const v0, 0x7f03006b

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setContentView(I)V

    .line 27
    invoke-direct {p0}, Lcom/zhangdan/app/widget/CustomAlertDialog;->initialView()V

    .line 28
    return-void
.end method

.method private initialView()V
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f09015f

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/widget/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/widget/CustomAlertDialog;->mTitle:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f090175

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/widget/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/widget/CustomAlertDialog;->mContent:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f090177

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/widget/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zhangdan/app/widget/CustomAlertDialog;->mButtonLeft:Landroid/widget/Button;

    .line 39
    const v0, 0x7f090178

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/widget/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zhangdan/app/widget/CustomAlertDialog;->mButtonRight:Landroid/widget/Button;

    .line 40
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 33
    return-void
.end method

.method public setDialogButton(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "rightBtnTextResId"
    .parameter "leftBtnTextResId"
    .parameter "rightBtnClickListener"
    .parameter "leftBtnClickListener"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomAlertDialog;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 109
    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomAlertDialog;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(I)V

    .line 110
    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomAlertDialog;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomAlertDialog;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v0, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method public setDialogButton(ILandroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "textResId"
    .parameter "onClickListener"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomAlertDialog;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 134
    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomAlertDialog;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomAlertDialog;->mButtonLeft:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 136
    return-void
.end method

.method public setDialogButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "text"
    .parameter "onClickListener"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomAlertDialog;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomAlertDialog;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomAlertDialog;->mButtonLeft:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    return-void
.end method

.method public setDialogButton(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "rightBtnText"
    .parameter "leftBtnText"
    .parameter "rightBtnClickListener"
    .parameter "leftBtnClickListener"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomAlertDialog;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomAlertDialog;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomAlertDialog;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomAlertDialog;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v0, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method

.method public setDialogContent(II)V
    .locals 2
    .parameter "contentResId"
    .parameter "colorResId"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomAlertDialog;->mContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 68
    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomAlertDialog;->mContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/widget/CustomAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    return-void
.end method

.method public setDialogContent(Ljava/lang/String;I)V
    .locals 2
    .parameter "content"
    .parameter "colorResId"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomAlertDialog;->mContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomAlertDialog;->mContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/widget/CustomAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    return-void
.end method

.method public setDialogTitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomAlertDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 58
    return-void
.end method

.method public setDialogTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomAlertDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method
