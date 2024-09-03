#!/usr/bin/env python3

from langchain_ollama import ChatOllama
from langchain_core.messages import HumanMessage, SystemMessage

llm = ChatOllama(
        model="tinydolphin"
)


messages = [
    SystemMessage(content="Translate the following from English into Italian"),
    HumanMessage(content="hi!"),
]

ai_msg = llm.invoke(messages)

print(ai_msg.content)
