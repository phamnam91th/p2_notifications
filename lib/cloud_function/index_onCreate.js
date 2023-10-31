const functions = require('firebase-functions');
const admin = require('firebase-admin');
admin.initializeApp();

exports.sendNewsNotification = functions.firestore
.document('sports/{sport}/news/{newsId}')
.onCreate(async (snapshot, context) => {
  const sport = context.params.sport;
  const news = snapshot.data();

  const title = String(news.title);
  const content = String(news.content);

  const payload = {
    notification: {
      title: title,
      body: content
    },
    topic: sport,
  };

  return admin.messaging().send(payload);
})