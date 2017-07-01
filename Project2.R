
df=read.csv("C:/Users/Acer/Desktop/Acadgild/Sales_Dataset.csv")
print(df)



#multiple linear regression:
lmfit=lm(sales~advertise+plays+attractiveness,df)  #fitting the linear regression model
print(lmfit)
summary(lmfit)
plot(lmfit)
coef(lmfit)
confint(lmfit)
plot(lmfit)

#tail(sort(hatvalues(best)), 3)Comparing models using anova
anova(lmfit1,lmfit) #very low p-value below F critical level reject null hypothesis
#that model does not depend upon plays and attractiveness
anova(lmfit2,lmfit)#very low p-value below F critical level reject null hypothesis
#that model does not depend upon advertise and attractiveness
anova(lmfit3,lmfit)#very low p-value below F critical level reject null hypothesis
#that model does not depend upon advertise and attractiveness

#Outlier analysis
tail(sort(hatvalues(lmfit)),3)



fitted(lmfit)
y_val=fitted(lmfit)
y_val
df["Predicted"]=predict(lmfit,interval = "confidence")
View(df)

