.class Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PartPaidActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/detail/PartPaidActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PayedListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mFormat:Ljava/text/DecimalFormat;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mRepaymentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/Repayment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zhangdan/app/activities/detail/PartPaidActivity;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/detail/PartPaidActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/Repayment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Repayment;>;"
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;->this$0:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 186
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;->mFormat:Ljava/text/DecimalFormat;

    .line 189
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 190
    iput-object p3, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;->mRepaymentList:Ljava/util/List;

    .line 191
    return-void
.end method


# virtual methods
.method public addData(Lcom/zhangdan/app/data/model/http/Repayment;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;->mRepaymentList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;->mRepaymentList:Ljava/util/List;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;->mRepaymentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;->notifyDataSetChanged()V

    .line 198
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;->mRepaymentList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;->mRepaymentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 210
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;->mRepaymentList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;->mRepaymentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;->mRepaymentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 217
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 222
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 227
    const/4 v1, 0x0

    .line 228
    .local v1, holder:Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 229
    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0300c3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 230
    new-instance v1, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter$ViewHolder;

    .end local v1           #holder:Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter$ViewHolder;
    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter$ViewHolder;-><init>(Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;)V

    .line 231
    .restart local v1       #holder:Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter$ViewHolder;
    const v3, 0x7f0902b3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter$ViewHolder;->mTextView1:Landroid/widget/TextView;

    .line 232
    const v3, 0x7f0902b4

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter$ViewHolder;->mTextView2:Landroid/widget/TextView;

    .line 233
    const v3, 0x7f0902b5

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v1, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter$ViewHolder;->mBtnDelete:Landroid/widget/Button;

    .line 235
    iget-object v3, v1, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter$ViewHolder;->mBtnDelete:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 241
    :goto_0
    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;->mRepaymentList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/data/model/http/Repayment;

    .line 242
    .local v2, pay:Lcom/zhangdan/app/data/model/http/Repayment;
    iget-object v3, v1, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter$ViewHolder;->mTextView1:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8fd8\u6b3e:   \uffe5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;->mFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/Repayment;->getReturnAmount()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/Repayment;->getRepaymentDate()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, date:Ljava/lang/String;
    const-string v3, "-"

    const-string v4, "/"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 245
    const-string v3, " "

    const-string v4, "   "

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 246
    iget-object v3, v1, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter$ViewHolder;->mTextView2:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v4, v1, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter$ViewHolder;->mBtnDelete:Landroid/widget/Button;

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;->this$0:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/PartPaidActivity;->mEditMode:Z
    invoke-static {v3}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->access$600(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 249
    iget-object v3, v1, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter$ViewHolder;->mBtnDelete:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 250
    return-object p2

    .line 239
    .end local v0           #date:Ljava/lang/String;
    .end local v2           #pay:Lcom/zhangdan/app/data/model/http/Repayment;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter$ViewHolder;
    check-cast v1, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter$ViewHolder;
    goto :goto_0

    .line 248
    .restart local v0       #date:Ljava/lang/String;
    .restart local v2       #pay:Lcom/zhangdan/app/data/model/http/Repayment;
    :cond_1
    const/4 v3, 0x4

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 268
    :goto_0
    return-void

    .line 265
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 266
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "position"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;->this$0:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public removeData(Lcom/zhangdan/app/data/model/http/Repayment;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;->mRepaymentList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$PayedListAdapter;->mRepaymentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 203
    :cond_0
    return-void
.end method
